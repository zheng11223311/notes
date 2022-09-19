.class public Lcom/youku/vo/Initial;
.super Ljava/lang/Object;
.source "Initial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/vo/Initial$ShareDocument;,
        Lcom/youku/vo/Initial$ToolbarsItem;,
        Lcom/youku/vo/Initial$PageModule;,
        Lcom/youku/vo/Initial$RefreshPage;,
        Lcom/youku/vo/Initial$StartPage;,
        Lcom/youku/vo/Initial$AllSwitchs;,
        Lcom/youku/vo/Initial$Update;,
        Lcom/youku/vo/Initial$TudouLogo;
    }
.end annotation


# static fields
.field public static final BG_IMG_URL:Ljava/lang/String; = "bg_image_url"

.field public static final FG_IMG_URL:Ljava/lang/String; = "fg_image_url"

.field public static final TYPE_POS_MIDDLE:Ljava/lang/String; = "middle"

.field public static final TYPE_POS_UP:Ljava/lang/String; = "up"

.field public static final TYPE_SHOW:Ljava/lang/String; = "type_show"

.field public static final TYPE_SHOW_BG_ONLY:Ljava/lang/String; = "bg_only"

.field public static final TYPE_SHOW_FG_ONLY:Ljava/lang/String; = "fg_only"

.field public static final TYPE_SHOW_NORMAL:Ljava/lang/String; = "normal"


# instance fields
.field public all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

.field public app_market_control:I

.field public code:I

.field public comment_pic_url:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public format:Ljava/lang/String;

.field public guid:Ljava/lang/String;

.field public limit_domain:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public my_page_inf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/Initial$PageModule;",
            ">;"
        }
    .end annotation
.end field

.field public player_qxd_switch:I

.field public pop_page:Lcom/youku/vo/PopPage;

.field public record_time:I

.field public refresh_page:Lcom/youku/vo/Initial$RefreshPage;

.field public search_word:Ljava/lang/String;

.field public server_time:J

.field public share_document:Lcom/youku/vo/Initial$ShareDocument;

.field public soft_decoder:Z

.field public start_page:Lcom/youku/vo/Initial$StartPage;

.field public status:Ljava/lang/String;

.field public timeout_settings:Ljava/lang/String;

.field public toolbars_inf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/Initial$ToolbarsItem;",
            ">;"
        }
    .end annotation
.end field

.field public tudou_360_mut:I

.field public tudou_logo:Lcom/youku/vo/Initial$TudouLogo;

.field public update:Lcom/youku/vo/Initial$Update;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/vo/Initial;->soft_decoder:Z

    .line 240
    return-void
.end method


# virtual methods
.method public getNonWifiConnectTimeOut()I
    .locals 9

    .prologue
    const/4 v4, -0x1

    .line 104
    iget-object v5, p0, Lcom/youku/vo/Initial;->timeout_settings:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 125
    :cond_0
    :goto_0
    return v4

    .line 108
    :cond_1
    iget-object v5, p0, Lcom/youku/vo/Initial;->timeout_settings:Ljava/lang/String;

    const-string v6, "non-wifi"

    const-string v7, "non_wifi"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/youku/vo/Initial;->timeout_settings:Ljava/lang/String;

    .line 110
    const/4 v1, 0x0

    .line 112
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/youku/vo/Initial;->timeout_settings:Ljava/lang/String;

    invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v1    # "json":Lorg/json/JSONObject;
    .local v2, "json":Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    :try_start_1
    const-string v5, "non_wifi"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 115
    const-string v5, "non_wifi"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 116
    .local v3, "jsonnonwifi":Lorg/json/JSONObject;
    if-eqz v3, :cond_0

    .line 117
    const-string v5, "WY"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "connect_timeout"

    const/4 v8, -0x1

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v5, "connect_timeout"

    const/4 v6, -0x1

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    goto :goto_0

    .line 121
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "jsonnonwifi":Lorg/json/JSONObject;
    .restart local v1    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Lorg/json/JSONException;
    :goto_1
    goto :goto_0

    .line 121
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "json":Lorg/json/JSONObject;
    .restart local v2    # "json":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "json":Lorg/json/JSONObject;
    .restart local v1    # "json":Lorg/json/JSONObject;
    goto :goto_1
.end method

.method public getNonWifiReadTimeOut()I
    .locals 9

    .prologue
    const/4 v4, -0x1

    .line 79
    iget-object v5, p0, Lcom/youku/vo/Initial;->timeout_settings:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v4

    .line 83
    :cond_1
    iget-object v5, p0, Lcom/youku/vo/Initial;->timeout_settings:Ljava/lang/String;

    const-string v6, "non-wifi"

    const-string v7, "non_wifi"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/youku/vo/Initial;->timeout_settings:Ljava/lang/String;

    .line 85
    const/4 v1, 0x0

    .line 87
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/youku/vo/Initial;->timeout_settings:Ljava/lang/String;

    invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v1    # "json":Lorg/json/JSONObject;
    .local v2, "json":Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    :try_start_1
    const-string v5, "non_wifi"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 90
    const-string v5, "non_wifi"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 91
    .local v3, "jsonnonwifi":Lorg/json/JSONObject;
    if-eqz v3, :cond_0

    .line 92
    const-string v5, "WY"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "read_timeout"

    const/4 v8, -0x1

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v5, "read_timeout"

    const/4 v6, -0x1

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    goto :goto_0

    .line 96
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "jsonnonwifi":Lorg/json/JSONObject;
    .restart local v1    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Lorg/json/JSONException;
    :goto_1
    goto :goto_0

    .line 96
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "json":Lorg/json/JSONObject;
    .restart local v2    # "json":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "json":Lorg/json/JSONObject;
    .restart local v1    # "json":Lorg/json/JSONObject;
    goto :goto_1
.end method

.method public getWifiConnectTimeOut()I
    .locals 9

    .prologue
    const/4 v4, -0x1

    .line 129
    iget-object v5, p0, Lcom/youku/vo/Initial;->timeout_settings:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 147
    :cond_0
    :goto_0
    return v4

    .line 132
    :cond_1
    const/4 v1, 0x0

    .line 134
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/youku/vo/Initial;->timeout_settings:Ljava/lang/String;

    invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .end local v1    # "json":Lorg/json/JSONObject;
    .local v2, "json":Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    :try_start_1
    const-string/jumbo v5, "wifi"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 137
    const-string/jumbo v5, "wifi"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 138
    .local v3, "jsonwifi":Lorg/json/JSONObject;
    if-eqz v3, :cond_0

    .line 139
    const-string v5, "WY"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "connect_timeout"

    const/4 v8, -0x1

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v5, "connect_timeout"

    const/4 v6, -0x1

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    goto :goto_0

    .line 143
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "jsonwifi":Lorg/json/JSONObject;
    .restart local v1    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Lorg/json/JSONException;
    :goto_1
    goto :goto_0

    .line 143
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "json":Lorg/json/JSONObject;
    .restart local v2    # "json":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "json":Lorg/json/JSONObject;
    .restart local v1    # "json":Lorg/json/JSONObject;
    goto :goto_1
.end method

.method public getWifiReadTimeOut()I
    .locals 9

    .prologue
    const/4 v4, -0x1

    .line 152
    iget-object v5, p0, Lcom/youku/vo/Initial;->timeout_settings:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 170
    :cond_0
    :goto_0
    return v4

    .line 155
    :cond_1
    const/4 v1, 0x0

    .line 157
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/youku/vo/Initial;->timeout_settings:Ljava/lang/String;

    invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .end local v1    # "json":Lorg/json/JSONObject;
    .local v2, "json":Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    :try_start_1
    const-string/jumbo v5, "wifi"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 160
    const-string/jumbo v5, "wifi"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 161
    .local v3, "jsonwifi":Lorg/json/JSONObject;
    if-eqz v3, :cond_0

    .line 162
    const-string v5, "WY"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "read_timeout"

    const/4 v8, -0x1

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v5, "read_timeout"

    const/4 v6, -0x1

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    goto :goto_0

    .line 166
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "jsonwifi":Lorg/json/JSONObject;
    .restart local v1    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Lorg/json/JSONException;
    :goto_1
    goto :goto_0

    .line 166
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "json":Lorg/json/JSONObject;
    .restart local v2    # "json":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "json":Lorg/json/JSONObject;
    .restart local v1    # "json":Lorg/json/JSONObject;
    goto :goto_1
.end method
