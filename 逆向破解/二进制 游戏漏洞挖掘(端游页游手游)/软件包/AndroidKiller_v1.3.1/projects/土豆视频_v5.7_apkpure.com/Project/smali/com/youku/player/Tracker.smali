.class public Lcom/youku/player/Tracker;
.super Ljava/lang/Object;
.source "Tracker.java"


# static fields
.field public static ANALYTICS_ID:Ljava/lang/String; = null

.field public static final CATEGORY_ALWAYS_COUTINUE_PLAY:Ljava/lang/String; = "\u59cb\u7ec8\u8fde\u64ad"

.field public static final CATEGORY_CHANNEL:Ljava/lang/String; = "\u9891\u9053"

.field public static final CATEGORY_CLICKS:Ljava/lang/String; = "\u70b9\u51fb"

.field public static final CATEGORY_DETAIL:Ljava/lang/String; = "\u8be6\u60c5"

.field public static final CATEGORY_DRAGS:Ljava/lang/String; = "\u62d6\u52a8"

.field public static final CATEGORY_HOME:Ljava/lang/String; = "\u9996\u9875"

.field public static final CATEGORY_PLAYER:Ljava/lang/String; = "\u64ad\u653e\u5668"

.field public static final CATEGORY_PLAY_HISTORY:Ljava/lang/String; = "\u64ad\u653e\u5386\u53f2"

.field public static final CATEGORY_PLAY_LANGUAGE:Ljava/lang/String; = "\u8bed\u8a00"

.field public static final CATEGORY_PLAY_SKIP_HEAD_AND_TAIL:Ljava/lang/String; = "\u8df3\u7247\u5934\u7247\u5c3e"

.field public static final CATEGORY_UPLOAD:Ljava/lang/String; = "\u4e0a\u4f20"

.field public static final LABEL_BUTTON:Ljava/lang/String; = "\u6309\u94ae"

.field public static final LABEL_DRAG:Ljava/lang/String; = "\u62d6\u52a8"

.field public static final LABEL_THUMBNAIL:Ljava/lang/String; = "\u7f29\u7565\u56fe"

.field private static final TRACKER_VALUE:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    const-string v0, ""

    sput-object v0, Lcom/youku/player/Tracker;->ANALYTICS_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isTrackerReady()Z
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public static startNewSession(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 163
    return-void
.end method

.method public static stopSession()V
    .locals 0

    .prologue
    .line 166
    return-void
.end method

.method public static trackAlwaysCoutinuePlayBtn(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 169
    invoke-static {p0}, Lcom/youku/player/goplay/Profile;->getPlayMode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 170
    const-string/jumbo v0, "\u64ad\u653e\u5668"

    const-string/jumbo v1, "\u59cb\u7ec8\u8fde\u64ad\u6253\u5f00"

    invoke-static {v0, v1}, Lcom/youku/player/Tracker;->trackBtnClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :goto_0
    return-void

    .line 172
    :cond_0
    const-string/jumbo v0, "\u64ad\u653e\u5668"

    const-string/jumbo v1, "\u59cb\u7ec8\u8fde\u64ad\u5173\u95ed"

    invoke-static {v0, v1}, Lcom/youku/player/Tracker;->trackBtnClick(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static trackBtnClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 127
    const-string/jumbo v0, "\u6309\u94ae"

    invoke-static {p0, p1, v0}, Lcom/youku/player/Tracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public static trackDetailBtn(Ljava/lang/String;)V
    .locals 1
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 135
    const-string/jumbo v0, "\u8be6\u60c5"

    invoke-static {v0, p0}, Lcom/youku/player/Tracker;->trackBtnClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public static trackDrag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 155
    const-string/jumbo v0, "\u62d6\u52a8"

    invoke-static {p0, p1, v0}, Lcom/youku/player/Tracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;

    .prologue
    .line 114
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/youku/player/Tracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 115
    return-void
.end method

.method private static trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "value"    # I

    .prologue
    .line 101
    invoke-static {}, Lcom/youku/player/Tracker;->isTrackerReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    new-instance v0, Lcom/youku/player/Tracker$1;

    invoke-direct {v0}, Lcom/youku/player/Tracker$1;-><init>()V

    .line 109
    .local v0, "trackerThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 111
    .end local v0    # "trackerThread":Ljava/lang/Thread;
    :cond_0
    return-void
.end method

.method public static trackHomeBtn(Ljava/lang/String;)V
    .locals 1
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 131
    const-string/jumbo v0, "\u9996\u9875"

    invoke-static {v0, p0}, Lcom/youku/player/Tracker;->trackBtnClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public static trackPageView(Ljava/lang/String;)V
    .locals 1
    .param p0, "pageName"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-static {}, Lcom/youku/player/Tracker;->isTrackerReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    :cond_0
    return-void
.end method

.method public static trackPlayHistoryBtn(Ljava/lang/String;)V
    .locals 1
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 143
    const-string/jumbo v0, "\u64ad\u653e\u5386\u53f2"

    invoke-static {v0, p0}, Lcom/youku/player/Tracker;->trackBtnClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public static trackPlayLanguageBtn()V
    .locals 2

    .prologue
    .line 183
    const-string/jumbo v0, "\u64ad\u653e\u5668"

    const-string/jumbo v1, "\u8bed\u8a00"

    invoke-static {v0, v1}, Lcom/youku/player/Tracker;->trackBtnClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public static trackPlaySkipHeadAndTailBtn()V
    .locals 2

    .prologue
    .line 176
    invoke-static {}, Lcom/youku/player/goplay/Profile;->isSkipHeadAndTail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    const-string/jumbo v0, "\u64ad\u653e\u5668"

    const-string/jumbo v1, "\u8df3\u8fc7\u7247\u5934\u7247\u5c3e\u6253\u5f00"

    invoke-static {v0, v1}, Lcom/youku/player/Tracker;->trackBtnClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :goto_0
    return-void

    .line 179
    :cond_0
    const-string/jumbo v0, "\u64ad\u653e\u5668"

    const-string/jumbo v1, "\u8df3\u8fc7\u7247\u5934\u7247\u5c3e\u5173\u95ed"

    invoke-static {v0, v1}, Lcom/youku/player/Tracker;->trackBtnClick(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static trackPlayerBtn(Ljava/lang/String;)V
    .locals 1
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 147
    const-string/jumbo v0, "\u64ad\u653e\u5668"

    invoke-static {v0, p0}, Lcom/youku/player/Tracker;->trackBtnClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public static trackPlayerDrag(Ljava/lang/String;)V
    .locals 1
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 159
    const-string/jumbo v0, "\u64ad\u653e\u5668"

    invoke-static {v0, p0}, Lcom/youku/player/Tracker;->trackDrag(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public static trackThumbnailClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 151
    const-string/jumbo v0, "\u7f29\u7565\u56fe"

    invoke-static {p0, p1, v0}, Lcom/youku/player/Tracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public static trackUploadBtn(Ljava/lang/String;)V
    .locals 1
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 139
    const-string/jumbo v0, "\u4e0a\u4f20"

    invoke-static {v0, p0}, Lcom/youku/player/Tracker;->trackBtnClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method
