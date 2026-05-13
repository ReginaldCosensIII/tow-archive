<%@ Page Language="C#" %>
    <%@ Import namespace="System.IO" %>
        <%@ Import namespace="System.Linq" %>
            <%@ Import namespace="System.Collections.Generic" %>

                <!DOCTYPE html>
                <html lang="en">

                <head>
                    <meta charset="utf-8" />
                    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                    <title>Archive | Walkersville, MD</title>

                    <link rel='stylesheet' href='files/glightbox.min.css' type='text/css' media='all' />

                    <link rel="stylesheet" href="archive-styles.css" type="text/css" />
                </head>

                <body>

                    <header>
                        <div class="container">
                            <a href="https://www.walkersvillemd.gov/">
                                <img src="files/logo.png" alt="Walkersville, MD"
                                    onerror="this.src='https://web.archive.org/web/20250404130440im_/https://www.walkersvillemd.gov/sites/all/themes/custom/sites/walkersvillemd/walkersvillemd_theme/logo.png'" />
                            </a>
                        </div>
                    </header>

                    <main class="container">
                        <h1>Past Meetings</h1>
                        <dl>
                            <% string basePath="~/Meeting Recordings" ; string basedir=Server.MapPath(basePath);
                                string[] dirs=Directory.GetDirectories(basedir); foreach(var dir in dirs){ var info=new
                                DirectoryInfo(dir); if(!info.Name.StartsWith("_")){ continue; } %>

                                <dt>
                                    <h4>
                                        <%= info.Name.Replace("_", "" ) %>
                                    </h4>
                                </dt>

                                <dd style="display: none;">
                                    <% string[] files=Directory.GetFiles(dir); List<Tuple<DateTime, string, string>>
                                        displayVals = new List<Tuple<DateTime, string, string>>();

                                            foreach (string file in files.Reverse()) {
                                            string ext = Path.GetExtension(file);
                                            if(!ext.Equals(".mp4")){
                                            continue;
                                            }
                                            string fileName = Path.GetFileNameWithoutExtension(file);

                                            string urlStr = basePath.Replace("~", "") + "/" + info.Name +"/" +
                                            Path.GetFileName(file);
                                            fileName = fileName.Replace("fixed", "");
                                            string displayName = fileName;
                                            var split = fileName.Split(new char[] { ' ' });
                                            if(split.Length > 0){
                                            fileName = split[0];
                                            }
                                            var pieces = fileName.Split(new char[] {'-'});
                                            var list = new List<string>();
                                                list.AddRange(pieces);
                                                list.Reverse();
                                                list = list.Take(3).ToList();
                                                list.Reverse();
                                                fileName = string.Join("-", list);

                                                DateTime parsed;
                                                if(DateTime.TryParse(fileName, out parsed)) {
                                                displayName = displayName.Substring(0, displayName.IndexOf(fileName) +
                                                fileName.Length);
                                                displayName = displayName.Replace(fileName, ": " +
                                                parsed.ToLongDateString()).Replace("-", " ");
                                                displayVals.Add(Tuple.Create(parsed, displayName, urlStr));
                                                } else {
                                                displayVals.Add(Tuple.Create(DateTime.MinValue, displayName, urlStr));
                                                }
                                                }
                                                %>

                                                <% foreach (var val in displayVals.OrderByDescending(a=>
                                                    a.Item1).ThenBy(a=>a.Item2)) { %>
                                                    <p>
                                                        <a href="<%=val.Item3 %>" class="glightbox">
                                                            <%= val.Item2 %>
                                                        </a>
                                                    </p>
                                                    <% } %>
                                </dd>
                                <% } %>
                        </dl>
                    </main>

                    <footer>
                        <div class="container">
                            <div class="footer-grid">
                                <div class="footer-column left">
                                    <img src="files/footernameseal.png" alt="Town of Walkersville Maryland"
                                        onerror="this.src='https://web.archive.org/web/20250404130440im_/https://www.walkersvillemd.gov/sites/all/themes/custom/sites/walkersvillemd/walkersvillemd_theme/logo.png'" />
                                </div>

                                <div class="footer-column center">
                                    <p style="margin:0;"><strong>TOWN HALL</strong><br />
                                        21 W. Frederick St.<br />
                                        P.O. Box 249<br />
                                        Walkersville, MD 21793<br />
                                        PH: 301-845-4500<br />
                                        FX: 301-845-2406<br />
                                        HOURS: M-F 8:30am - 4:30pm</p>
                                </div>

                                <div class="footer-column right">
                                    <p style="margin: 0 0 5px 0;"><a
                                            href="https://www.walkersvillemd.gov/home/pages/website-disclaimer">Website
                                            Disclaimer</a></p>
                                    <p style="margin: 0 0 5px 0;"><a href="https://www.civicplus.com/">Government
                                            Websites by CivicPlus&reg;</a></p>
                                    <ul id="vts-user-menu">
                                        <!--Disabled May 2026: Legacy Drupal login path (404). Preserved for future auth portal reference.
                                        <li class="first"><a href="/user/login?current=node/1">Login</a></li>-->
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </footer>

                    <script src="https://code.jquery.com/jquery-3.6.0.min.js"
                        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
                        crossorigin="anonymous"></script>
                    <script type='text/javascript' src='files/glightbox.min.js'></script>

                    <script>
                        jQuery(document).ready(function ($) {
                            $('dt h4').click(function () {
                                var $content = $(this).parent().next('dd');
                                $content.slideToggle(300);
                            });
                        });

                        var lightboxVideo = GLightbox({
                            selector: '.glightbox'
                        });

                        lightboxVideo.on('slide_changed', ({ prev, current }) => {
                            const { player } = current;
                            if (player) {
                                if (!player.ready) {
                                    player.on('ready', (event) => { });
                                }
                            }
                        });
                    </script>
                </body>

                </html>