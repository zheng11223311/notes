.class public Lcom/youku/player/goplay/Profile;
.super Ljava/lang/Object;
.source "Profile.java"


# static fields
.field public static final ALWAYSHOOKUP:I = 0x1

.field public static final API_LEVEL:I

.field public static final BIGSIZE:I = 0x1e

.field public static final BOTTOM:I = 0x4

.field public static final FORMAT_3GP:I = 0x2

.field public static final FORMAT_3GPHD:I = 0x4

.field public static final FORMAT_FLV_HD:I = 0x5

.field public static final FORMAT_HD2:I = 0x7

.field public static final FORMAT_HD3:I = 0x8

.field public static final FORMAT_M3U8:I = 0x6

.field public static final FORMAT_MP4:I = 0x1

.field public static final FORMAT_TUDOU_1080P:I = 0x8

.field public static final FORMAT_TUDOU_3GP:I = 0x2

.field public static final FORMAT_TUDOU_F4V:I = 0x5

.field public static final FORMAT_TUDOU_F4V_256P:I = 0x2

.field public static final FORMAT_TUDOU_F4V_360P:I = 0x3

.field public static final FORMAT_TUDOU_F4V_480P:I = 0x4

.field public static final FORMAT_TUDOU_F4V_720P:I = 0x5

.field public static final FORMAT_TUDOU_F4V_ORIGINAL:I = 0x63

.field public static final FORMAT_TUDOU_FLV:I = 0x5

.field public static final FORMAT_TUDOU_HIGH:I = 0x1

.field public static final FORMAT_TUDOU_MP4:I = 0x1

.field public static final FORMAT_TUDOU_STANDARD:I = 0x5

.field public static final FORMAT_TUDOU_SUPER:I = 0x7

.field public static GUID:Ljava/lang/String; = null

.field public static final HARDWARE_DECODE:I = 0x2

.field public static final HEAD_POINT:Ljava/lang/String; = "head"

.field public static final HTC:I = 0x4

.field public static final LOOP:I = 0x3

.field public static final MIDSIZE:I = 0x18

.field public static final NOHOOKUP:I = 0x2

.field public static final OTHER_DECODE:I = 0x3

.field public static final PAD:I = 0x0

.field public static final PAD_BROWSER:I = 0x3

.field public static final PHONE:I = 0x1

.field public static final PHONE_BROWSER:I = 0x2

.field public static PLANTFORM:I = 0x0

.field public static PLAYER_DEFAULT:I = 0x0

.field public static PLAYER_OUR:I = 0x0

.field public static final RETURNBIGSIZE:I = 0x2

.field public static final RETURNBOTTOM:I = 0x6

.field public static final RETURNMIDSIZE:I = 0x1

.field public static final RETURNSCROLL:I = 0x3

.field public static final RETURNSMALLSIZE:I = 0x0

.field public static final RETURNTOP:I = 0x4

.field public static final SCROLL:I = 0x1

.field public static final SMALLSIZE:I = 0x12

.field public static final SOFTWARE_DECODE:I = 0x1

.field public static final STANDARD_POINT:Ljava/lang/String; = "standard"

.field public static final STORY_POINT:Ljava/lang/String; = "story"

.field private static final TAG:Ljava/lang/String; = "com.tools.Profile"

.field public static final TAIL_POINT:Ljava/lang/String; = "tail"

.field public static final TOP:I = 0x5

.field public static USER_AGENT:Ljava/lang/String; = null

.field public static USE_SYSTEM_PLAYER:Z = false

.field public static final VIDEO_QUALITY_AUTO:I = 0x3

.field public static final VIDEO_QUALITY_HD:I = 0x1

.field public static final VIDEO_QUALITY_HD2:I = 0x0

.field public static final VIDEO_QUALITY_HD3:I = 0x4

.field public static final VIDEO_QUALITY_SD:I = 0x2

.field public static final YOUCANGUESS:Ljava/lang/String; = "094b2a34e812a4282f25c7ca1987789f"

.field public static baiduFormat:Ljava/lang/String; = null

.field public static barrage_effect:I = 0x0

.field public static barrage_position:I = 0x0

.field public static ctype:I = 0x0

.field public static final ctypeHLS:I = 0x50

.field public static danmakuSwith:Z

.field public static debugMode:Z

.field public static ev:Ljava/lang/String;

.field public static from:I

.field private static iku_connected:Z

.field private static isSmallScreen:Z

.field public static langCode:Ljava/lang/String;

.field public static liveDanmakuSwith:Z

.field public static pid:Ljava/lang/String;

.field private static playMode:I

.field public static playerType:I

.field private static sharedPreferenceInit:Z

.field private static skipHeadAndTail:Z

.field private static useHardwareDecode:Z

.field private static videoFormat:I

.field public static videoQuality:I

.field private static videoSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 28
    const-string v0, ""

    sput-object v0, Lcom/youku/player/goplay/Profile;->USER_AGENT:Ljava/lang/String;

    .line 33
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/youku/player/goplay/Profile;->API_LEVEL:I

    .line 35
    sput v1, Lcom/youku/player/goplay/Profile;->PLAYER_DEFAULT:I

    .line 37
    sput v3, Lcom/youku/player/goplay/Profile;->PLAYER_OUR:I

    .line 40
    const/4 v0, 0x5

    sput v0, Lcom/youku/player/goplay/Profile;->videoFormat:I

    .line 42
    sput-boolean v1, Lcom/youku/player/goplay/Profile;->debugMode:Z

    .line 45
    sput-boolean v1, Lcom/youku/player/goplay/Profile;->USE_SYSTEM_PLAYER:Z

    .line 48
    const/16 v0, 0x2711

    sput v0, Lcom/youku/player/goplay/Profile;->PLANTFORM:I

    .line 51
    sput v1, Lcom/youku/player/goplay/Profile;->ctype:I

    .line 57
    const-string v0, "1"

    sput-object v0, Lcom/youku/player/goplay/Profile;->ev:Ljava/lang/String;

    .line 67
    sput-boolean v1, Lcom/youku/player/goplay/Profile;->useHardwareDecode:Z

    .line 161
    sget v0, Lcom/youku/player/goplay/Profile;->PLAYER_DEFAULT:I

    sput v0, Lcom/youku/player/goplay/Profile;->playerType:I

    .line 164
    const-string v0, "guoyu"

    sput-object v0, Lcom/youku/player/goplay/Profile;->langCode:Ljava/lang/String;

    .line 188
    const/16 v0, 0x64

    sput v0, Lcom/youku/player/goplay/Profile;->videoSize:I

    .line 191
    sput v3, Lcom/youku/player/goplay/Profile;->videoQuality:I

    .line 194
    sput-boolean v2, Lcom/youku/player/goplay/Profile;->skipHeadAndTail:Z

    .line 213
    sput v2, Lcom/youku/player/goplay/Profile;->from:I

    .line 215
    sput-boolean v1, Lcom/youku/player/goplay/Profile;->sharedPreferenceInit:Z

    .line 216
    sput-boolean v1, Lcom/youku/player/goplay/Profile;->iku_connected:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDanmakuEffect(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 283
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 285
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "barrage_effect"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/youku/player/goplay/Profile;->barrage_effect:I

    .line 286
    sget v1, Lcom/youku/player/goplay/Profile;->barrage_effect:I

    return v1
.end method

.method public static getDanmakuPosition(I)I
    .locals 1
    .param p0, "position"    # I

    .prologue
    .line 384
    const/4 v0, 0x0

    .line 385
    .local v0, "danmakuPositon":I
    packed-switch p0, :pswitch_data_0

    .line 398
    :goto_0
    :pswitch_0
    return v0

    .line 387
    :pswitch_1
    const/4 v0, 0x3

    .line 388
    goto :goto_0

    .line 390
    :pswitch_2
    const/4 v0, 0x4

    .line 391
    goto :goto_0

    .line 393
    :pswitch_3
    const/4 v0, 0x6

    .line 394
    goto :goto_0

    .line 385
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static getDanmakuPosition(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 290
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 292
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "barrage_position"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/youku/player/goplay/Profile;->barrage_position:I

    .line 293
    sget v1, Lcom/youku/player/goplay/Profile;->barrage_position:I

    return v1
.end method

.method public static getDanmakuSwith(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 269
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 271
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "danmakuSwith"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/youku/player/goplay/Profile;->danmakuSwith:Z

    .line 272
    sget-boolean v1, Lcom/youku/player/goplay/Profile;->danmakuSwith:Z

    return v1
.end method

.method public static getDanmakuTextSize(I)I
    .locals 1
    .param p0, "size"    # I

    .prologue
    .line 366
    const/4 v0, 0x0

    .line 367
    .local v0, "textSize":I
    sparse-switch p0, :sswitch_data_0

    .line 380
    :goto_0
    return v0

    .line 369
    :sswitch_0
    const/4 v0, 0x0

    .line 370
    goto :goto_0

    .line 372
    :sswitch_1
    const/4 v0, 0x1

    .line 373
    goto :goto_0

    .line 375
    :sswitch_2
    const/4 v0, 0x2

    .line 376
    goto :goto_0

    .line 367
    nop

    :sswitch_data_0
    .sparse-switch
        0x12 -> :sswitch_0
        0x18 -> :sswitch_1
        0x1e -> :sswitch_2
    .end sparse-switch
.end method

.method public static getLiveDanmakuSwith(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 276
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 278
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "liveDanmakuSwith"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/youku/player/goplay/Profile;->liveDanmakuSwith:Z

    .line 279
    sget-boolean v1, Lcom/youku/player/goplay/Profile;->liveDanmakuSwith:Z

    return v1
.end method

.method public static getPlayMode(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 315
    sget-boolean v0, Lcom/youku/player/goplay/Profile;->sharedPreferenceInit:Z

    if-eqz v0, :cond_0

    .line 316
    sget v0, Lcom/youku/player/goplay/Profile;->playMode:I

    .line 318
    :goto_0
    return v0

    .line 317
    :cond_0
    invoke-static {p0}, Lcom/youku/player/goplay/Profile;->initSharedPreference(Landroid/content/Context;)V

    .line 318
    sget v0, Lcom/youku/player/goplay/Profile;->playMode:I

    goto :goto_0
.end method

.method public static getPreferences(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 304
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 306
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v2, ""

    invoke-interface {v0, p0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 307
    .local v1, "value":Ljava/lang/String;
    return-object v1
.end method

.method public static getUnsignedInt(I)J
    .locals 4
    .param p0, "color"    # I

    .prologue
    .line 402
    const v2, 0x7fffffff

    and-int/2addr v2, p0

    int-to-long v0, v2

    .line 403
    .local v0, "unsignedValue":J
    const-wide v2, 0x80000000L

    or-long/2addr v0, v2

    .line 404
    return-wide v0
.end method

.method public static getVideoFormat()I
    .locals 1

    .prologue
    .line 131
    sget v0, Lcom/youku/player/goplay/Profile;->videoFormat:I

    return v0
.end method

.method public static getVideoFormatName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 143
    const/4 v0, 0x0

    .line 144
    .local v0, "typeName":Ljava/lang/String;
    sget v1, Lcom/youku/player/goplay/Profile;->videoFormat:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 145
    const-string v0, "3gp"

    .line 157
    :cond_0
    :goto_0
    return-object v0

    .line 146
    :cond_1
    sget v1, Lcom/youku/player/goplay/Profile;->videoFormat:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 147
    const-string v0, "flv_hd"

    goto :goto_0

    .line 148
    :cond_2
    sget v1, Lcom/youku/player/goplay/Profile;->videoFormat:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 149
    const-string v0, "3gphd"

    goto :goto_0

    .line 150
    :cond_3
    sget v1, Lcom/youku/player/goplay/Profile;->videoFormat:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_4

    .line 151
    const-string v0, "m3u8"

    goto :goto_0

    .line 152
    :cond_4
    sget v1, Lcom/youku/player/goplay/Profile;->videoFormat:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 153
    const-string v0, "mp4"

    goto :goto_0

    .line 154
    :cond_5
    sget v1, Lcom/youku/player/goplay/Profile;->videoFormat:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 155
    const-string v0, "hd2"

    goto :goto_0
.end method

.method public static getVideoQuality(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 326
    sget-boolean v0, Lcom/youku/player/goplay/Profile;->sharedPreferenceInit:Z

    if-eqz v0, :cond_0

    .line 327
    sget v0, Lcom/youku/player/goplay/Profile;->videoQuality:I

    .line 329
    :goto_0
    return v0

    .line 328
    :cond_0
    invoke-static {p0}, Lcom/youku/player/goplay/Profile;->initSharedPreference(Landroid/content/Context;)V

    .line 329
    sget v0, Lcom/youku/player/goplay/Profile;->videoQuality:I

    goto :goto_0
.end method

.method public static getVideoQualityFromSharedPreferences(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 263
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 265
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "video_quality"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/youku/player/goplay/Profile;->videoQuality:I

    .line 266
    return-void
.end method

.method public static getVideoSize(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 337
    sget-boolean v0, Lcom/youku/player/goplay/Profile;->sharedPreferenceInit:Z

    if-eqz v0, :cond_0

    .line 338
    sget v0, Lcom/youku/player/goplay/Profile;->videoSize:I

    .line 340
    :goto_0
    return v0

    .line 339
    :cond_0
    invoke-static {p0}, Lcom/youku/player/goplay/Profile;->initSharedPreference(Landroid/content/Context;)V

    .line 340
    sget v0, Lcom/youku/player/goplay/Profile;->videoSize:I

    goto :goto_0
.end method

.method public static get_iku_connected()Z
    .locals 1

    .prologue
    .line 223
    sget-boolean v0, Lcom/youku/player/goplay/Profile;->iku_connected:Z

    return v0
.end method

.method public static initSharedPreference(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 250
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 252
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "skip_head"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/youku/player/goplay/Profile;->skipHeadAndTail:Z

    .line 253
    const-string v3, "play_mode"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/youku/player/goplay/Profile;->playMode:I

    .line 254
    const-string/jumbo v3, "video_quality"

    const/4 v4, 0x2

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/youku/player/goplay/Profile;->videoQuality:I

    .line 255
    const-string/jumbo v3, "video_size"

    const/16 v4, 0x64

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/youku/player/goplay/Profile;->videoSize:I

    .line 256
    const-string v3, "isSoftDecoder"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "isSupportHardDecoder"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    :cond_0
    sput-boolean v1, Lcom/youku/player/goplay/Profile;->useHardwareDecode:Z

    .line 258
    sput-boolean v2, Lcom/youku/player/goplay/Profile;->sharedPreferenceInit:Z

    .line 259
    const/4 v0, 0x0

    .line 260
    return-void
.end method

.method public static isSegMp4()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 139
    sget v1, Lcom/youku/player/goplay/Profile;->videoFormat:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSkipHeadAndTail()Z
    .locals 1

    .prologue
    .line 227
    sget-boolean v0, Lcom/youku/player/goplay/Profile;->skipHeadAndTail:Z

    return v0
.end method

.method public static isSmallScreen()Z
    .locals 1

    .prologue
    .line 246
    sget-boolean v0, Lcom/youku/player/goplay/Profile;->isSmallScreen:Z

    return v0
.end method

.method public static ism3u8()Z
    .locals 2

    .prologue
    .line 135
    sget v0, Lcom/youku/player/goplay/Profile;->videoFormat:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static replaceSpaceWithPlus(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "rawString"    # Ljava/lang/String;

    .prologue
    .line 408
    const-string v2, "[\' \']+"

    .line 409
    .local v2, "regEx":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 410
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 411
    .local v0, "m":Ljava/util/regex/Matcher;
    const-string v3, "+"

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static setHardwareDecode(Z)V
    .locals 0
    .param p0, "isHardware"    # Z

    .prologue
    .line 362
    sput-boolean p0, Lcom/youku/player/goplay/Profile;->useHardwareDecode:Z

    .line 363
    return-void
.end method

.method public static setPlayMode(I)V
    .locals 0
    .param p0, "playMode"    # I

    .prologue
    .line 322
    sput p0, Lcom/youku/player/goplay/Profile;->playMode:I

    .line 323
    return-void
.end method

.method public static setPreferences(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 297
    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 299
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 300
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 301
    return-void
.end method

.method public static setSkipHeadAndTail(Z)V
    .locals 0
    .param p0, "skipHeadAndTail"    # Z

    .prologue
    .line 311
    sput-boolean p0, Lcom/youku/player/goplay/Profile;->skipHeadAndTail:Z

    .line 312
    return-void
.end method

.method public static setSmallScreen(Landroid/app/Activity;)V
    .locals 4
    .param p0, "mActivity"    # Landroid/app/Activity;

    .prologue
    const/16 v3, 0x190

    .line 235
    :try_start_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 236
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 237
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-gt v2, v3, :cond_0

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gt v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    sput-boolean v2, Lcom/youku/player/goplay/Profile;->isSmallScreen:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    :goto_1
    return-void

    .line 237
    .restart local v0    # "dm":Landroid/util/DisplayMetrics;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 239
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    :catch_0
    move-exception v1

    .line 240
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static setVideoQuality(I)V
    .locals 0
    .param p0, "videoQuality"    # I

    .prologue
    .line 333
    sput p0, Lcom/youku/player/goplay/Profile;->videoQuality:I

    .line 334
    return-void
.end method

.method public static setVideoSize(I)V
    .locals 0
    .param p0, "videoSize"    # I

    .prologue
    .line 344
    sput p0, Lcom/youku/player/goplay/Profile;->videoSize:I

    .line 345
    return-void
.end method

.method public static setVideoType(I)V
    .locals 2
    .param p0, "VideoType"    # I

    .prologue
    .line 125
    const-string v0, "com.tools.Profile"

    const-string/jumbo v1, "setVideoType"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    sput p0, Lcom/youku/player/goplay/Profile;->videoFormat:I

    .line 127
    return-void
.end method

.method public static setVideoType_and_PlayerType(ILandroid/content/Context;)V
    .locals 1
    .param p0, "VideoType"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 116
    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    .line 117
    sget v0, Lcom/youku/player/goplay/Profile;->PLAYER_OUR:I

    sput v0, Lcom/youku/player/goplay/Profile;->playerType:I

    .line 121
    :goto_0
    sput p0, Lcom/youku/player/goplay/Profile;->videoFormat:I

    .line 122
    return-void

    .line 119
    :cond_0
    sget v0, Lcom/youku/player/goplay/Profile;->PLAYER_DEFAULT:I

    sput v0, Lcom/youku/player/goplay/Profile;->playerType:I

    goto :goto_0
.end method

.method public static set_iku_connected(Z)V
    .locals 0
    .param p0, "connected"    # Z

    .prologue
    .line 219
    sput-boolean p0, Lcom/youku/player/goplay/Profile;->iku_connected:Z

    .line 220
    return-void
.end method

.method public static useHardwareDecode(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 349
    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/youku/player/config/MediaPlayerConfiguration;->isGreyControl(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 350
    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/config/MediaPlayerConfiguration;->useHardwareDecode()Z

    move-result v0

    .line 357
    :cond_0
    :goto_0
    return v0

    .line 352
    :cond_1
    sget-boolean v2, Lcom/youku/player/goplay/Profile;->sharedPreferenceInit:Z

    if-eqz v2, :cond_3

    .line 353
    sget-boolean v2, Lcom/youku/player/goplay/Profile;->useHardwareDecode:Z

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/player/config/MediaPlayerConfiguration;->useHardwareDecode()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 356
    :cond_3
    invoke-static {p0}, Lcom/youku/player/goplay/Profile;->initSharedPreference(Landroid/content/Context;)V

    .line 357
    sget-boolean v2, Lcom/youku/player/goplay/Profile;->useHardwareDecode:Z

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/player/config/MediaPlayerConfiguration;->useHardwareDecode()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method
