<div class="flex flex-jc:center flex-ai:center">
    <div class="layout_box layout_box_medium">
        <div class="layout_box_title">
            <h2><i class="fas fa-flag-checkered"></i> 举报违规玩家</h2>
        </div>

        <div class="padding">
            <div>
                为了维护服务器游戏环境不被恶意玩家破坏，本网站提供了举报违规玩家功能。
            </div>
            <div>
                提交举报信息时，请您尽可能详细地填写报告，以帮助管理员更快更准确的处理违规玩家。
            </div>

            <div class="margin-top:half margin-bottom">
                如果您不确定如何在游戏中记录证据，请
                <a href="javascript:void(0)"
                    onclick="ShowBox('如何记录证据', '在游戏中 你可以按下键盘上的 \' ` \' 键打开游戏控制台 <br /> 输入 \'record name\' 开始录制 &nbsp; || &nbsp; 输入 \'stop\' 停止录制 <br /> 录制保存的 Demo 文件在游戏目录的 mod 文件夹中 <br /> 你可以输入 \'playdemo name\' 或 \'viewdemo name\' 来播放 Demo', 'blue', '', true);">单击此处</a>
                获取说明。
            </div>

            <form action="index.php?p=submit" method="post" enctype="multipart/form-data">
                <input type="hidden" name="subban" value="1">

                <div class="margin-bottom:half">
                    <label for="Type" class="form-label form-label:bottom">
                        封禁类型
                    </label>
                    <select id="Type" name="Type" class="form-select form-full"
                        onChange="changeType(this[this.selectedIndex].value);">
                        <option value="0">Steam ID</option>
                        <option value="1">IP 地址</option>
                    </select>
                </div>

                <div class="margin-bottom:half">
                    <label for="SteamID" class="form-label form-label:bottom">
                        玩家 Steam ID
                    </label>
                    <input type="text" id="SteamID" name="SteamID" size="40" maxlength="64" value="{$STEAMID}"
                        class="form-input form-full" />
                </div>

                <div class="margin-bottom:half">
                    <label for="BanIP" class="form-label form-label:bottom">
                        玩家 IP 地址
                    </label>
                    <input type="text" id="BanIP" name="BanIP" size="40" maxlength="64" value="{$ban_ip}"
                        class="form-input form-full" />
                </div>

                <div class="margin-bottom:half">
                    <label for="PlayerName" class="form-label form-label:bottom">
                        玩家昵称 <span class="mandatory">*</span>
                    </label>
                    <input type="text" id="PlayerName" size="40" maxlength="70" name="PlayerName" value="{$player_name}"
                        class="form-input form-full" />
                </div>

                <div class="margin-bottom:half">
                    <label for="BanReason" class="form-label form-label:bottom">
                        举报该玩家的原因 <span class="mandatory">*</span> (请尽可能详细描述，摸棱两可的描述无法处理)
                    </label>
                    <textarea id="BanReason" name="BanReason" class="form-text form-full">{$ban_reason}</textarea>
                </div>

                <div class="margin-bottom:half">
                    <label for="SubmitName" class="form-label form-label:bottom">
                        您的称呼
                    </label>
                    <input type="text" id="SubmitName" size="40" maxlength="70" name="SubmitName"
                        value="{$subplayer_name}" class="form-input form-full" />
                </div>

                <div class="margin-bottom:half">
                    <label for="EmailAddr" class="form-label form-label:bottom">
                        您的邮箱 <span class="mandatory">*</span>
                    </label>
                    <input type="text" id="EmailAddr" size="40" maxlength="70" name="EmailAddr" value="{$player_email}"
                        class="form-input form-full" />
                </div>

                <div class="margin-bottom:half">
                    <label for="server" class="form-label form-label:bottom">
                        相关服务器 <span class="mandatory">*</span>
                    </label>
                    <select id="server" name="server" class="form-select form-full">
                        <option value="-1">-- Select Server --</option>
                        {foreach from=$server_list item="server"}
                            <option value="{$server.sid}" {if $server_selected==$server.sid}selected{/if}>
                                {$server.hostname}</option>
                        {/foreach}
                        <option value="0">Other server / Not listed here</option>
                    </select>
                </div>

                <div class="margin-bottom:half">
                    <label for="demo_file" class="form-label form-label:bottom">
                        上传 demo
                    </label>

                    <input name="demo_file" id="demo_file" type="file" size="25" class="form-file form-full" />
                    <div class="form-desc">
                        注意: 只能上传 DEM, ZIP, RAR, 7Z, BZ2, GZ 格式的文件.
                    </div>
                </div>

                <div class="flex">
                    {sb_button text="Submit" class="button button-primary flex:11" id="save" submit=true}
                </div>
            </form>

            <div class="margin-top">
                <h3>如果有人被封禁会怎样？</h3>
                <p>
                    如果有人被封禁，特定的 SteamID 或 IP 地址将被记录在在此 SourceBans 数据库中，并且每次该玩家尝试连接到我们的任何一个服务器时，他/她都会被阻止，并会收到一条消息，表明他们已被 SourceBans 封禁。
                </p>
            </div>
        </div>
    </div>
</div>
