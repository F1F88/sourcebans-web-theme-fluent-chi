<main>
  <div class="layout_topBar">
    <div class="layout_container flex flex-jc:end flex-ai:center">
      <ul class="SocialMedia layout_topBar_action flex">
        <li>
          <button id="user_action_change_dark" aria-label="Dark mode"><i class="fas fa-moon"></i></button>
        </li>
        <li class="jscolor_li">
          <button data-jscolor aria-label="Color"></button>
        </li>
        <li id="jscolor_reset" class="jscolor_li" style="display: none;">
          <button aria-label="Reset color"><i class="fa fa-refresh"></i></button>
        </li>

<!-- Remove the comments balise if you to enable some SocialMedia Icons -->

          <!-- ! Customized information -->
          <li class="responsive_show:desktop">
            <a target="_blank" href="https://github.com/F1F88" rel="noopener" title="开源代码">
              <i class="fa-brands fa-github fa-lg"></i>
          </a>
          </li>

          <li class="responsive_show:desktop">
            <a target="_blank" href="https://blog.csdn.net/weixin_43908947/article/details/127372900" rel="noopener" title="开服教程">
              <i class="fa-solid fa-book fa-lg"></i>
           </a>
          </li>

          <li class="responsive_show:desktop">
            <a target="_blank" href="http://qm.qq.com/cgi-bin/qm/qr?_wv=1027&k=DFlkMkOZL6EqByYj6dmzfrf1NjYdvoH9&authKey=2QRZrQi9VSnQ9HuqSCEnlvDPDY5CllpYgXCcj7UQitZN0aMbXdJvRWLXOv%2BlrXc%2B&noverify=0&group_code=809761730" rel="noopener" title="QQ 交流群">
              <i class="fa-brands fa-qq fa-lg"></i>
            </a>
          </li>

        <!--
          <li class="responsive_show:desktop">
            <a target="_blank" href="https://steamcommunity.com/groups/nide_css" rel="noopener" title="Our Steam Group">
              <i class="fab fa-steam-symbol"></i>
            </a>
          </li>
        -->

        <!--
          <li class="responsive_show:desktop">
            <a target="_blank" href="https://www.facebook.com/Steam" rel="noopener" data-ipstooltip="" _title="Follow us on Facebook">
              <i class="fab fa-facebook"></i>
            </a>
          </li>
        -->

        <!--
          <li class="responsive_show:desktop">
            <a target="_blank" href="https://twitter.com/aXen_1998" rel="noopener" data-ipstooltip="" _title="Follow us on Twitter">
              <i class="fab fa-twitter"></i>
            </a>
          </li>
        -->

        <!--
          <li class="responsive_show:desktop">
            <a target="_blank" href="https://www.instagram.com/zuck/" rel="noopener" data-ipstooltip="" _title="Follow us on Instagram">
              <i class="fab fa-instagram"></i>
            </a>
          </li>
        -->

        <!--
          <li class="responsive_show:desktop">
            <a target="_blank" href="https://www.twitch.tv/zevent" rel="noopener" data-ipstooltip="" _title="Follow us on Twitch">
              <i class="fab fa-twitch"></i>
            </a>
          </li>
        -->

        <!--
          <li class="responsive_show:desktop">
            <a target="_blank" href="https://discord.gg/XhByCBg" rel="noopener" data-ipstooltip="" _title="Join us on Discord">
              <i class="fab fa-discord"></i>
            </a>
          </li>
        -->

        <!--
          <li class="responsive_show:desktop">
            <a target="_blank" href="https://telegram.org/" rel="noopener" data-ipstooltip="" _title="Join us on Telegram">
              <i class="fab fa-telegram"></i>
            </a>
          </li>
        -->

        <!--
          <li class="responsive_show:desktop">
            <a target="_blank" href="https://youtube.com/embed/dQw4w9WgXcQ?rel=0;&amp;autoplay=1" rel="noopener" data-ipstooltip="" _title="Follow us on YouTube">
              <i class="fab fa-youtube"></i>
            </a>
          </li>
        -->
      </ul>

      <ul class="layout_topBar_userBar responsive_show:desktop flex flex-ai:center">
        {if $login}
          <li class="margin-right">
            Welcome, <a href='index.php?p=account'><i class="fas fa-user"></i> {$username}</a>
          </li>
          <li>
            <a class="button button-important" href='index.php?p=logout'><i class="fas fa-sign-out-alt"></i>
              Logout</a>
          </li>
        {else}
          <li>
            <!-- <a class="button button-success" href='index.php?p=login'>Existing user? Sign In</a> -->
            <a class="button button-success" href='index.php?p=login'>登录</a>
          </li>
        {/if}
      </ul>

      <button id="button_mobile_open" class="nav_mobile_open responsive_hide:desktop" aria-label="Mobile nav open">
        <i class="fas fa-bars"></i>
      </button>
    </div>
  </div>

  <div id="layout_mobile" class="nav_mobile">
    <button id="button_mobile_close" class="nav_mobile_close" aria-label="Mobile nav close">
      <i class="fas fa-times"></i>
    </button>
    <div class="nav_mobile_content">

      <div class="nav_mobile_tab_top padding flex">
        {if $login}
          <a class="button button-important button:full" href='index.php?p=logout'><i class="fas fa-sign-out-alt"></i>
            Logout</a>
        {else}
          <!-- <a class="button button-success" href='index.php?p=login'>Existing user? Sign In</a> -->
          <a class="button button-success" href='index.php?p=login'>登录</a>
        {/if}
      </div>
      <nav class="nav_mobile_tab_nav">
        <ul>
            {foreach from=$navbar item="nav"}
                <li class="{$nav.state}">
                    <a href="index.php?p={$nav.endpoint}" data-nav="{$nav.endpoint}">
                        {$nav.title}
                    </a>
                </li>
            {/foreach}
		    {if $isAdmin}
                {foreach from=$adminbar item="admin"}
			        <li class="{$nav.state}">
				        <a class="nav_link {$admin.state}" href="index.php?p=admin&c={$admin.endpoint}">
					        {$admin.title}
				        </a>
			        </li>
                {/foreach}
            {/if}
        </ul>
      </nav>

    </div>
    <div class="nav_mobile_background"></div>
  </div>

    <nav id="navBar" class="nav responsive_show:desktop">
        <div class="nav_tab">
            <ul>
                {if $login}
                    <li class="margin-right">
                        <!-- <a href='index.php?p=account'><i class="fa-solid fa-gear"></i> Account Settings</a> -->
                        <a href='index.php?p=account'><i class="fa-solid fa-gear"></i> 账号信息</a>
                    </li>
                {/if}
                    {foreach from=$navbar item="nav"}
                    <li class="{$nav.state}">
                        <a href="index.php?p={$nav.endpoint}" data-nav="{$nav.endpoint}">
                        {$nav.title}
                        </a>
                    </li>
                    {/foreach}
                {if $isAdmin}
                    {foreach from=$adminbar item="admin"}
                        <li class="{$nav.state}">
                            <a class="nav_link {$admin.state}" href="index.php?p=admin&c={$admin.endpoint}">
                                {$admin.title}
                            </a>
                        </li>
                    {/foreach}
                {/if}
            </ul>
        </div>
  </nav>
  <div id="mainwrapper" class="layout_body flex:11">
