<div class="layout_box margin-bottom">
    <div class="table padding">
        <div class="table_box">
            <table>
                <tbody>
                    <tr class="collapse">
                        <td class="text:center">
                            <span class="text:bold">高级搜索</span> (点击)
                        </td>
                    </tr>

                    <tr class="table_hide">
                        <td colspan="1">
                            <div class="collapse_content flex flex-jc:center">
                                <div class="padding">
                                    <div class="flex m:flex-fd:column">
                                        <div class="flex:11 margin-right">
                                            <div class="margin-bottom:half">
                                                <input id="name" name="search_type" class="form-radio" type="radio"
                                                    value="name" />

                                                <label for="name" class="form-label form-label:bottom">
                                                    昵称
                                                </label>

                                                <input class="form-input form-full" type="text" id="nick" value=""
                                                    onmouseup="$('name').checked = true" />
                                            </div>

                                            <div class="margin-bottom:half">
                                                <input id="steam_" type="radio" name="search_type" class="form-radio"
                                                    value="radiobutton" />

                                                <label for="steam_"
                                                    class="form-label form-label:bottom form-label:right">
                                                    Steam ID
                                                </label>

                                                <div class="flex">
                                                    <input class="form-input form-full margin-right" type="text"
                                                        id="steamid" value="" onmouseup="$('steam_').checked = true" />

                                                    <select class="form-select form-full" id="steam_match"
                                                        onmouseup="$('steam_').checked = true">
                                                        <option value="0" selected>精确搜索</option>
                                                        <option value="1">模糊搜索</option>
                                                    </select>
                                                </div>
                                            </div>

                                            {if !$hideplayerips}
                                                <div class="margin-bottom:half">
                                                    <input id="ip_" type="radio" class="form-radio" name="search_type"
                                                        value="radiobutton" />

                                                    <label for="ip" class="form-label form-label:bottom">
                                                        IP
                                                    </label>

                                                    <input class="form-input form-full" type="text" id="ip" value=""
                                                        onmouseup="$('ip_').checked = true" />
                                                </div>
                                            {/if}

                                            <div class="margin-bottom:half">
                                                <input id="reason_" type="radio" name="search_type" class="form-radio"
                                                    value="radiobutton" />

                                                <label for="ban_reason" class="form-label form-label:bottom">
                                                    理由
                                                </label>

                                                <input class="form-input form-full" type="text" id="ban_reason" value=""
                                                    onmouseup="$('reason_').checked = true" />
                                            </div>
                                        </div>

                                        <div class="flex:11">
                                            <div class="margin-bottom:half">
                                                <input id="date" type="radio" name="search_type" class="form-radio"
                                                    value="radiobutton" />

                                                <label for="date" class="form-label form-label:bottom form-label:right">
                                                    时间
                                                </label>

                                                <div class="flex">
                                                    <input class="form-input form-full margin-right" type="text"
                                                        id="day" value="DD" onmouseup="$('date').checked = true"
                                                        maxlength="2" />
                                                    <input class="form-input form-full margin-right" type="text"
                                                        id="month" value="MM" onmouseup="$('date').checked = true"
                                                        maxlength="2" />
                                                    <input class="form-input form-full" type="text" id="year" value="YY"
                                                        onmouseup="$('date').checked = true" maxlength="4" />
                                                </div>
                                            </div>

                                            <div class="margin-bottom:half">
                                                <input id="ban_type_" type="radio" name="search_type" class="form-radio"
                                                    value="radiobutton" />

                                                <label for="ban_type"
                                                    class="form-label form-label:bottom form-label:right">
                                                    类型
                                                </label>

                                                <select class="form-select form-full" id="ban_type"
                                                    onmouseup="$('ban_type_').checked = true">
                                                    <option value="0" selected>Steam ID</option>
                                                    <option value="1">IP 地址</option>
                                                </select>
                                            </div>

                                            {if !$hideadminname}
                                                <div class="margin-bottom:half">
                                                    <input id="admin" name="search_type" type="radio" class="form-radio"
                                                        value="radiobutton" />

                                                    <label for="ban_admin"
                                                        class="form-label form-label:bottom form-label:right">
                                                        操作管理员
                                                    </label>

                                                    <select class="form-select form-full" id="ban_admin"
                                                        onmouseup="$('admin').checked = true">
                                                        {foreach from=$admin_list item="admin"}
                                                            <option label="{$admin.user}" value="{$admin.aid}">{$admin.user}
                                                            </option>
                                                        {/foreach}
                                                    </select>
                                                </div>
                                            {/if}

                                            <div class="margin-bottom:half">
                                                <input id="where_banned" name="search_type" class="form-radio"
                                                    type="radio" value="radiobutton" />

                                                <label for="server"
                                                    class="form-label form-label:bottom form-label:right">
                                                    服务器
                                                </label>

                                                <select class="form-select form-full" id="server"
                                                    onmouseup="$('where_banned').checked = true">
                                                    <option label="Web Ban" value="0">网页封禁</option>
                                                    {foreach from=$server_list item="server"}
                                                        <option value="{$server.sid}" id="ss{$server.sid}">
                                                            获取主机名...
                                                            ({$server.ip}:{$server.port})</option>
                                                    {/foreach}
                                                </select>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="margin-bottom:half">
                                        <input id="length_" type="radio" name="search_type" class="form-radio"
                                            value="radiobutton" />

                                        <label for="other_length" class="form-label form-label:bottom form-label:right">
                                            时长
                                        </label>

                                        <div class="flex">
                                            <select class="form-select form-full margin-right" id="length_type"
                                                onmouseup="$('length_').checked = true">
                                                <option value="e" title="相等">=</option>
                                                <option value="h" title="更大">&gt;</option>
                                                <option value="l" title="更小">&lt;</option>
                                                <option value="eh" title="大于等于">&gt;=</option>
                                                <option value="el" title="小于等于">&lt;=</option>
                                            </select>

                                            <select class="form-select form-full margin-right" id="length"
                                                onmouseup="$('length_').checked = true" onchange="switch_length(this);"
                                                onmouseover="if(this.options[this.selectedIndex].value=='other')$('length').setStyle('width', '210px');if(this.options[this.selectedIndex].value=='other')this.focus();"
                                                onblur="if(this.options[this.selectedIndex].value=='other')$('length').setStyle('width', '20px');">
                                                <option value="0">永久</option>
                                                <optgroup label="分钟">
                                                    <option value="1">1 分钟</option>
                                                    <option value="5">5 分钟</option>
                                                    <option value="10">10 分钟</option>
                                                    <option value="15">15 分钟</option>
                                                    <option value="30">30 分钟</option>
                                                    <option value="45">45 分钟</option>
                                                </optgroup>
                                                <optgroup label="小时">
                                                    <option value="60">1 小时</option>
                                                    <option value="120">2 小时</option>
                                                    <option value="180">3 小时</option>
                                                    <option value="240">4 小时</option>
                                                    <option value="480">8 小时</option>
                                                    <option value="720">12 小时</option>
                                                </optgroup>
                                                <optgroup label="天">
                                                    <option value="1440">1 天</option>
                                                    <option value="2880">2 天</option>
                                                    <option value="4320">3 天</option>
                                                    <option value="5760">4 天</option>
                                                    <option value="7200">5 天</option>
                                                    <option value="8640">6 天</option>
                                                </optgroup>
                                                <optgroup label="星期">
                                                    <option value="10080">1 星期</option>
                                                    <option value="20160">2 星期</option>
                                                    <option value="30240">3 星期</option>
                                                </optgroup>
                                                <optgroup label="月">
                                                    <option value="40320">1 月</option>
                                                    <option value="80640">2 月</option>
                                                    <option value="120960">3 月</option>
                                                    <option value="241920">6 月</option>
                                                    <option value="483840">12 月</option>
                                                </optgroup>
                                                <option value="other">其他时长(分钟)</option>
                                            </select>

                                            <input type="text" id="other_length" name="other_length"
                                                class="form-input form-full" onmouseup="$('length_').checked = true"
                                                style="display: none;" />
                                        </div>
                                    </div>

                                    {if $is_admin}
                                        <div class="margin-bottom:half">
                                            <input id="comment_" type="radio" name="search_type" class="form-radio"
                                                value="radiobutton" />

                                            <label for="ban_comment" class="form-label form-label:bottom form-label:right">
                                                Comment
                                            </label>

                                            <input class="form-input form-full" type="text" id="ban_comment" value=""
                                                onmouseup="$('comment_').checked = true" />
                                        </div>
                                    {/if}

                                    <div class="flex">
                                        {sb_button text="搜索" onclick="search_bans();" class="button button-primary flex:11" id="searchbtn" submit=false}
                                    </div>
                                </div>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
{$server_script}
