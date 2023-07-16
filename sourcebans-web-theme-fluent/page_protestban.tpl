<div class="flex flex-jc:center flex-ai:center">
    <div class="layout_box layout_box_medium">
        <div class="layout_box_title">
            <h2><i class="fas fa-user-clock"></i> 抗议封禁</h2>
        </div>

        <div class="padding">
            <div>
                在您提交一份解封申请前，请 <a href="index.php?p=banlist"
                    class="text:bold">点击这里</a> 查看您是否真的被封禁。
            </div>
            <div class="margin-bottom">
                <!-- ! Customized information -->
                <br />如果确认您的账号被列入封禁名单，且封禁理由有失公允或理由不当（误封），您可以在这提交申诉来解除封禁。<br />
                    也可以加入我们的
                    <a href="http://qm.qq.com/cgi-bin/qm/qr?_wv=1027&k=fSii0t8dC_HX8OyNSS2PEJGkU3aRJAr6&authKey=cLaokK6z4c2oBbrM2KN%2F2hBIHzLDMUDRwQNkQ7mCylhZK2xYLXZKVKZOx%2BdrRcOq&noverify=0&group_code=809761730">
                        [QQ群聊：809761730] </a>
                    寻求管理员的帮助
            </div>

            <form action="index.php?p=protest" method="post">
                <input type="hidden" name="subprotest" value="1">

                <div class="margin-bottom:half">
                    <label for="Type" class="form-label form-label:bottom">
                        封禁类型
                    </label>
                    <select id="Type" name="Type" class="form-select form-full"
                        onChange="changeType(this[this.selectedIndex].value);">
                        <option value="0">Steam ID</option>
                        <option value="1">IP Address</option>
                    </select>
                </div>

                <div id="steam.row" class="margin-bottom:half">
                    <label for="SteamID" class="form-label form-label:bottom">
                        您的 SteamID <span class="mandatory">*</span>
                    </label>
                    <input type="text" id="SteamID" name="SteamID" size="40" maxlength="64" value="{$steam_id}"
                        class="form-input form-full" />
                </div>

                <div id="ip.row" class="margin-bottom:half" style="display: none;">
                    <label for="Ip" class="form-label form-label:bottom">
                        您的 IP 地址
                    </label>
                    <input type="text" id="Ip" name="IP" size="40" maxlength="64" value="{$ip}"
                        class="form-input form-full" />
                </div>

                <div class="margin-bottom:half">
                    <label for="PlayerName" class="form-label form-label:bottom">
                        昵称 <span class="mandatory">*</span>
                    </label>
                    <input type="text" id="PlayerName" size="40" maxlength="70" name="PlayerName" value="{$player_name}"
                        class="form-input form-full" />
                </div>

                <div class="margin-bottom:half">
                    <label for="BanReason" class="form-label form-label:bottom">
                        申请解封的理由 <span class="mandatory">*</span>: (请尽可能详细描述，摸棱两可的描述或无法处理)
                    </label>
                    <textarea id="BanReason" name="BanReason" cols="30" rows="5"
                        class="form-text form-full input">{$reason}</textarea>
                </div>

                <div class="margin-bottom:half">
                    <label for="EmailAddr" class="form-label form-label:bottom">
                        您的联系方式 (如: QQ、邮箱) <span class="mandatory">*</span>
                    </label>
                    <input type="text" id="EmailAddr" size="40" maxlength="70" name="EmailAddr" value="{$player_email}"
                        class="form-input form-full" />
                </div>

                <div class="flex">
                    {sb_button text="Submit" class="button button-primary flex:11" id="alogin" submit=true}
                </div>
            </form>

            <div class="margin-top">
                <br /><h3>提交申诉后会发生什么？</h3>
                <p>
                    管理员将收到您的申诉通知，相关封禁记录会被重审。重审结束后您留下的联系方式会收到回复。
                </p>

                <h3>提示:</h3>
                <p>
                    确保你的在本服务器游玩时的行为没有违反玩家守则，在游戏服务器的公告栏里、QQ交流群的公告栏里都明确标注了玩家守则。
                </p>
            </div>
        </div>
    </div>
</div>
