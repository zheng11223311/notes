.class public final Lcom/tudou/detail/DetailSettings$DetailProp;
.super Lcom/tudou/detail/DetailSettings$NameValuePreference;
.source "DetailSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/detail/DetailSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DetailProp"
.end annotation


# static fields
.field public static final DETAIL_CLING_CHAT_SHOW:Ljava/lang/String; = "detail.cling.chats.show"

.field public static final DETAIL_CLING_DANMU:Ljava/lang/String; = "detail.cling.danmu"

.field public static final DETAIL_CLING_SCREENSHOT_SHOW:Ljava/lang/String; = "detail.cling.screenshot.show"

.field public static final DETAIL_CLING_U_PLUS_SHOW:Ljava/lang/String; = "detail.cling.u.plus.show"

.field public static final DETAIL_COMMENT_URL:Ljava/lang/String; = "detail.comment.url"

.field public static final DETAIL_CURRENT_DANMU_STATE:Ljava/lang/String; = "detail.current.danmu.state"

.field public static final DETAIL_DANMU_STATE_CLOSE:I = 0x0

.field public static final DETAIL_DANMU_STATE_OPEN:I = 0x1

.field public static final DETAIL_PLAYER_U_PLUS_ENABLE:Ljava/lang/String; = "detail.player.u.plus.enable"

.field public static final DETAIL_PLAYER_U_PLUS_STATE:Ljava/lang/String; = "detail.player.u.plus.state"

.field public static final DETAIL_PLAYER_U_PLUS_STATE_CLOSE:I = 0x2

.field public static final DETAIL_PLAYER_U_PLUS_STATE_OPEN:I = 0x1

.field public static final DETAIL_VIDEORECORD_ENABLE:Ljava/lang/String; = "detail.videorecord.enable"

.field public static final DETAIL_VIDEORECORD_MAX_DURATION:Ljava/lang/String; = "detail.videorecord.max.duration"

.field public static final DETAIL_VIDEORECORD_SHARE_CONTENT:Ljava/lang/String; = "detail.videorecord.share.content"

.field public static final DETAIL_VIDEORECORD_SHARE_TITLE:Ljava/lang/String; = "detail.videorecord.share.title"

.field private static final PREFERENCE_NAME:Ljava/lang/String;

.field private static sNameValueCache:Lcom/tudou/detail/DetailSettings$NameValueCache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 188
    const/4 v0, 0x0

    sput-object v0, Lcom/tudou/detail/DetailSettings$DetailProp;->sNameValueCache:Lcom/tudou/detail/DetailSettings$NameValueCache;

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/tudou/detail/DetailSettings$DetailProp;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tudou/detail/DetailSettings$DetailProp;->PREFERENCE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/tudou/detail/DetailSettings$NameValuePreference;-><init>()V

    return-void
.end method

.method public static declared-synchronized getBoolean(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 193
    const-class v4, Lcom/tudou/detail/DetailSettings$DetailProp;

    monitor-enter v4

    :try_start_0
    invoke-static {p0, p1}, Lcom/tudou/detail/DetailSettings$DetailProp;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 196
    .local v1, "valString":Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_1
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 200
    .local v2, "value":Z
    :goto_0
    monitor-exit v4

    return v2

    .line 196
    .end local v2    # "value":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .restart local v2    # "value":Z
    goto :goto_0

    .line 193
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "valString":Ljava/lang/String;
    .end local v2    # "value":Z
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static getFloat(Landroid/content/Context;Ljava/lang/String;)F
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tudou/detail/DetailSettings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 205
    invoke-static {p0, p1}, Lcom/tudou/detail/DetailSettings$DetailProp;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, "v":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 207
    new-instance v2, Lcom/tudou/detail/DetailSettings$SettingNotFoundException;

    invoke-direct {v2, p1}, Lcom/tudou/detail/DetailSettings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 210
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/tudou/detail/DetailSettings$SettingNotFoundException;

    invoke-direct {v2, p1}, Lcom/tudou/detail/DetailSettings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getFloat(Landroid/content/Context;Ljava/lang/String;F)F
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # F

    .prologue
    .line 217
    invoke-static {p0, p1}, Lcom/tudou/detail/DetailSettings$DetailProp;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, "v":Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 221
    .end local p2    # "def":F
    :cond_0
    :goto_0
    return p2

    .line 220
    .restart local p2    # "def":F
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static getInt(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tudou/detail/DetailSettings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 227
    invoke-static {p0, p1}, Lcom/tudou/detail/DetailSettings$DetailProp;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, "v":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/tudou/detail/DetailSettings$SettingNotFoundException;

    invoke-direct {v2, p1}, Lcom/tudou/detail/DetailSettings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getInt(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I

    .prologue
    .line 236
    invoke-static {p0, p1}, Lcom/tudou/detail/DetailSettings$DetailProp;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, "v":Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 241
    .end local p2    # "def":I
    :cond_0
    :goto_0
    return p2

    .line 239
    .restart local p2    # "def":I
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/tudou/detail/DetailSettings;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DetailSettings getInt catch Exception"

    invoke-static {v2, v3, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getLong(Landroid/content/Context;Ljava/lang/String;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tudou/detail/DetailSettings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 247
    invoke-static {p0, p1}, Lcom/tudou/detail/DetailSettings$DetailProp;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, "valString":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/tudou/detail/DetailSettings$SettingNotFoundException;

    invoke-direct {v2, p1}, Lcom/tudou/detail/DetailSettings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getLong(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # J

    .prologue
    .line 256
    invoke-static {p0, p1}, Lcom/tudou/detail/DetailSettings$DetailProp;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, "valString":Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 263
    .local v2, "value":J
    :goto_0
    return-wide v2

    .end local v2    # "value":J
    :cond_0
    move-wide v2, p2

    .line 259
    goto :goto_0

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/NumberFormatException;
    move-wide v2, p2

    .restart local v2    # "value":J
    goto :goto_0
.end method

.method public static declared-synchronized getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 274
    const-class v1, Lcom/tudou/detail/DetailSettings$DetailProp;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tudou/detail/DetailSettings$DetailProp;->sNameValueCache:Lcom/tudou/detail/DetailSettings$NameValueCache;

    if-nez v0, :cond_0

    .line 275
    new-instance v0, Lcom/tudou/detail/DetailSettings$NameValueCache;

    sget-object v2, Lcom/tudou/detail/DetailSettings$DetailProp;->PREFERENCE_NAME:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/tudou/detail/DetailSettings$NameValueCache;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tudou/detail/DetailSettings$DetailProp;->sNameValueCache:Lcom/tudou/detail/DetailSettings$NameValueCache;

    .line 277
    :cond_0
    sget-object v0, Lcom/tudou/detail/DetailSettings$DetailProp;->sNameValueCache:Lcom/tudou/detail/DetailSettings$NameValueCache;

    invoke-virtual {v0, p0, p1}, Lcom/tudou/detail/DetailSettings$NameValueCache;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static putBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 288
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/tudou/detail/DetailSettings$DetailProp;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putFloat(Landroid/content/Context;Ljava/lang/String;F)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 292
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/tudou/detail/DetailSettings$DetailProp;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putInt(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 296
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/tudou/detail/DetailSettings$DetailProp;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putLong(Landroid/content/Context;Ljava/lang/String;J)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 300
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/tudou/detail/DetailSettings$DetailProp;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 304
    sget-object v0, Lcom/tudou/detail/DetailSettings$DetailProp;->sNameValueCache:Lcom/tudou/detail/DetailSettings$NameValueCache;

    if-nez v0, :cond_0

    .line 305
    new-instance v0, Lcom/tudou/detail/DetailSettings$NameValueCache;

    sget-object v1, Lcom/tudou/detail/DetailSettings$DetailProp;->PREFERENCE_NAME:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/tudou/detail/DetailSettings$NameValueCache;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tudou/detail/DetailSettings$DetailProp;->sNameValueCache:Lcom/tudou/detail/DetailSettings$NameValueCache;

    .line 307
    :cond_0
    sget-object v0, Lcom/tudou/detail/DetailSettings$DetailProp;->sNameValueCache:Lcom/tudou/detail/DetailSettings$NameValueCache;

    invoke-virtual {v0, p1, p2}, Lcom/tudou/detail/DetailSettings$NameValueCache;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    sget-object v0, Lcom/tudou/detail/DetailSettings$DetailProp;->PREFERENCE_NAME:Ljava/lang/String;

    invoke-static {p0, v0, p1, p2}, Lcom/tudou/detail/DetailSettings$DetailProp;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
