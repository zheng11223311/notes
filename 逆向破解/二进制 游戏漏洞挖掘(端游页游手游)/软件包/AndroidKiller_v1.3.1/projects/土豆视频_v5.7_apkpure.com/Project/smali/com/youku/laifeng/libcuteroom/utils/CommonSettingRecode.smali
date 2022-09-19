.class public Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;
.super Ljava/lang/Object;
.source "CommonSettingRecode.java"


# static fields
.field private static instance:Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;


# instance fields
.field private final RECODE_ATTENTION_COUNT:Ljava/lang/String;

.field private final RECODE_LOGIC_FIRST_RUN:Ljava/lang/String;

.field private final RECODE_LOGIC_RESTAPI_INDEX:Ljava/lang/String;

.field private final RECODE_LOGINED_USERNAME:Ljava/lang/String;

.field private final RECODE_REPORT_ACTIVITYRESUME:Ljava/lang/String;

.field private final RECODE_REPORT_ACTIVITYRESUME_TIMES:Ljava/lang/String;

.field private final RECODE_SETTING_3G_VOICE:Ljava/lang/String;

.field private final RECODE_SETTING_NOTIFY:Ljava/lang/String;

.field private final RECODE_SETTING_PLAY_ANIMATION:Ljava/lang/String;

.field private final RECODE_SETTING_USERGUIDE:Ljava/lang/String;

.field public mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;->instance:Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string/jumbo v0, "setting.notifyrecive"

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;->RECODE_SETTING_NOTIFY:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, "setting.3g.voice"

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;->RECODE_SETTING_3G_VOICE:Ljava/lang/String;

    .line 17
    const-string v0, "attention.count"

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;->RECODE_ATTENTION_COUNT:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, "setting.userguide"

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;->RECODE_SETTING_USERGUIDE:Ljava/lang/String;

    .line 19
    const-string v0, "logined.user"

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;->RECODE_LOGINED_USERNAME:Ljava/lang/String;

    .line 20
    const-string v0, "logic.firstrun"

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;->RECODE_LOGIC_FIRST_RUN:Ljava/lang/String;

    .line 21
    const-string v0, "logic.restapi.index"

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;->RECODE_LOGIC_RESTAPI_INDEX:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, "setting.playanimation"

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;->RECODE_SETTING_PLAY_ANIMATION:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, "report.activityresume"

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;->RECODE_REPORT_ACTIVITYRESUME:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, "report.activityresumetimes"

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;->RECODE_REPORT_ACTIVITYRESUME_TIMES:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;
    .locals 3

    .prologue
    .line 40
    sget-object v0, Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;->instance:Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;

    if-nez v0, :cond_1

    .line 41
    const-class v1, Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;

    monitor-enter v1

    .line 42
    :try_start_0
    sget-object v0, Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;->instance:Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;

    invoke-direct {v0}, Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;-><init>()V

    sput-object v0, Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;->instance:Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;

    .line 44
    sget-object v0, Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;->instance:Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;

    .line 45
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, v0, Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;->mPrefs:Landroid/content/SharedPreferences;

    .line 47
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :cond_1
    sget-object v0, Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;->instance:Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    sget-object v0, Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;->instance:Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;

    if-nez v0, :cond_1

    .line 28
    const-class v1, Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;

    monitor-enter v1

    .line 29
    :try_start_0
    sget-object v0, Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;->instance:Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;

    invoke-direct {v0}, Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;-><init>()V

    sput-object v0, Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;->instance:Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;

    .line 31
    sget-object v0, Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;->instance:Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;

    .line 32
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, v0, Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;->mPrefs:Landroid/content/SharedPreferences;

    .line 34
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_1
    sget-object v0, Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;->instance:Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;

    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public addTodayUpdateCount()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 160
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 161
    .local v7, "t":Landroid/text/format/Time;
    invoke-virtual {v7}, Landroid/text/format/Time;->setToNow()V

    .line 162
    iget v8, v7, Landroid/text/format/Time;->year:I

    .line 163
    .local v8, "year":I
    iget v6, v7, Landroid/text/format/Time;->month:I

    .line 164
    .local v6, "month":I
    iget v0, v7, Landroid/text/format/Time;->monthDay:I

    .line 165
    .local v0, "date":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "day":Ljava/lang/String;
    iget-object v9, p0, Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;->mPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v10, "report.activityresume"

    const-string v11, ""

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 169
    .local v5, "lastday":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 171
    iget-object v9, p0, Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;->mPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v10, "report.activityresumetimes"

    invoke-interface {v9, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 172
    .local v2, "daytimes":I
    add-int/lit8 v2, v2, 0x1

    .line 173
    iget-object v9, p0, Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 174
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v9, "report.activityresumetimes"

    invoke-interface {v3, v9, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 175
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 187
    .end local v2    # "daytimes":I
    :goto_0
    return-void

    .line 178
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    iget-object v9, p0, Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 179
    .local v4, "editorday":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v9, "report.activityresume"

    invoke-interface {v4, v9, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 180
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 182
    iget-object v9, p0, Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 183
    .restart local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v9, "report.activityresumetimes"

    invoke-interface {v3, v9, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 184
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public getAttentionCount()I
    .locals 4

    .prologue
    .line 80
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "attention.count"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 81
    .local v0, "count":I
    return v0
.end method

.method public getLoginedUser()Ljava/lang/String;
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "logined.user"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRestApiIndex()I
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "logic.restapi.index"

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getTodayUpdateCount()I
    .locals 11

    .prologue
    .line 139
    const/4 v6, 0x0

    .line 140
    .local v6, "times":I
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    .line 141
    .local v5, "t":Landroid/text/format/Time;
    invoke-virtual {v5}, Landroid/text/format/Time;->setToNow()V

    .line 142
    iget v7, v5, Landroid/text/format/Time;->year:I

    .line 143
    .local v7, "year":I
    iget v4, v5, Landroid/text/format/Time;->month:I

    .line 144
    .local v4, "month":I
    iget v0, v5, Landroid/text/format/Time;->monthDay:I

    .line 145
    .local v0, "date":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "day":Ljava/lang/String;
    iget-object v8, p0, Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;->mPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v9, "report.activityresume"

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 148
    .local v3, "lastday":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 150
    iget-object v8, p0, Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;->mPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v9, "report.activityresumetimes"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 151
    .local v2, "daytimes":I
    add-int/lit8 v2, v2, 0x1

    .line 152
    move v6, v2

    .line 155
    .end local v2    # "daytimes":I
    :cond_0
    return v6
.end method

.method public is3gVoice()Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public isFirstRun()Z
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "logic.firstrun"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isOpenNotify()Z
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;->mPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "setting.notifyrecive"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isPlayAnimation()Z
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;->mPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "setting.playanimation"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isUserGuideOvered()Z
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;->mPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "setting.userguide"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public set3gVoice(Z)V
    .locals 2
    .param p1, "isopen"    # Z

    .prologue
    .line 63
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 64
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "setting.3g.voice"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 65
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 66
    return-void
.end method

.method public setAttentionCount(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 74
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 75
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "attention.count"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 76
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 77
    return-void
.end method

.method public setLoginedUser(Ljava/lang/String;)V
    .locals 2
    .param p1, "user"    # Ljava/lang/String;

    .prologue
    .line 95
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 96
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "logined.user"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 97
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 98
    return-void
.end method

.method public setOpenNotify(Z)V
    .locals 2
    .param p1, "isopen"    # Z

    .prologue
    .line 53
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 54
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "setting.notifyrecive"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 55
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 56
    return-void
.end method

.method public setPlayAnimation(Z)V
    .locals 2
    .param p1, "isPlay"    # Z

    .prologue
    .line 124
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 125
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "setting.playanimation"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 126
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 127
    return-void
.end method

.method public setRestApiIndex(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 114
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 115
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "logic.restapi.index"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 116
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 117
    return-void
.end method

.method public setRunnedMark()V
    .locals 3

    .prologue
    .line 105
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 106
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "logic.firstrun"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 107
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 108
    return-void
.end method

.method public setUserGuideOvered()V
    .locals 3

    .prologue
    .line 85
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 86
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "setting.userguide"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 87
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 88
    return-void
.end method
