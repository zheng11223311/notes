.class public Lcom/youku/player/base/YoukuPlayerView;
.super Lcom/youku/player/plugin/PluginOverlay;
.source "YoukuPlayerView.java"

# interfaces
.implements Lcom/youku/player/util/DetailMessage;
.implements Lcom/youku/player/plugin/MediaPlayerObserver;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/player/base/YoukuPlayerView$LayoutChangeListener;
    }
.end annotation


# static fields
.field private static final ANIMATION:I = 0x2

.field private static final DEBUG:Z = false

.field private static final FIRST_FRAME:I = 0x0

.field private static final LAST_FRAME:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static final WIDTH_RATIO:F = 0.6625f


# instance fields
.field public currMillisecond:J

.field private danmakuContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

.field danmakuLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field private danmakuUtils:Lcom/youku/player/danmaku/DanmakuUtils;

.field private danmakuView:Lmaster/flame/danmaku/controller/IDanmakuView;

.field private defaultDrawable:Landroid/graphics/drawable/Drawable;

.field public firstOnloaded:Z

.field firstSubtitle:Lcom/youku/player/subtitle/StrokeTextView;

.field fullwaterMarkMarginRight:I

.field fullwaterMarkMarginTop:I

.field private inflater:Landroid/view/LayoutInflater;

.field public isFullscreen:Z

.field private isTudouPadDanmaku:Z

.field private lastMeasuredHeight:I

.field private lastMeasuredWidth:I

.field layoutParams:Landroid/view/ViewGroup$LayoutParams;

.field private mActivity:Landroid/support/v4/app/FragmentActivity;

.field private mCacheStufferAdapter:Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer$Proxy;

.field private mContext:Landroid/content/Context;

.field private mParser:Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;

.field private mPlayerController:Lcom/youku/player/apiservice/IPlayerUiControl;

.field mVideoHeight:I

.field mVideoWidth:I

.field private player:Lcom/youku/player/base/YoukuPlayer;

.field playerDebugView:Landroid/widget/TextView;

.field public realVideoStart:Z

.field secondSubtitle:Lcom/youku/player/subtitle/StrokeTextView;

.field singleSubtitle:Lcom/youku/player/subtitle/StrokeTextView;

.field private smallViewHeight:I

.field private sp:Landroid/content/SharedPreferences;

.field surfaceBlack:Landroid/view/View;

.field public surfaceView:Lcom/youku/player/NewSurfaceView;

.field tudouLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field private tudouWaterMark:Landroid/widget/ImageView;

.field tudouWaterMarkHeight:I

.field tudouWaterMarkWidth:I

.field videoSize:I

.field private waterMark:Landroid/widget/ImageView;

.field private waterMarkAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field waterMarkHeight:I

.field waterMarkMarginRight:I

.field waterMarkMarginTop:I

.field waterMarkWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/youku/player/LogTag;->TAG_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/youku/player/base/YoukuPlayerView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/player/base/YoukuPlayerView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 137
    invoke-direct {p0, p1}, Lcom/youku/player/plugin/PluginOverlay;-><init>(Landroid/content/Context;)V

    .line 109
    iput-boolean v0, p0, Lcom/youku/player/base/YoukuPlayerView;->firstOnloaded:Z

    .line 110
    iput-boolean v0, p0, Lcom/youku/player/base/YoukuPlayerView;->realVideoStart:Z

    .line 117
    iput-boolean v0, p0, Lcom/youku/player/base/YoukuPlayerView;->isFullscreen:Z

    .line 348
    const/16 v0, 0x64

    iput v0, p0, Lcom/youku/player/base/YoukuPlayerView;->videoSize:I

    .line 1106
    new-instance v0, Lcom/youku/player/base/YoukuPlayerView$13;

    invoke-direct {v0, p0}, Lcom/youku/player/base/YoukuPlayerView$13;-><init>(Lcom/youku/player/base/YoukuPlayerView;)V

    iput-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->mCacheStufferAdapter:Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer$Proxy;

    .line 138
    invoke-direct {p0, p1}, Lcom/youku/player/base/YoukuPlayerView;->init(Landroid/content/Context;)V

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 147
    invoke-direct {p0, p1, p2}, Lcom/youku/player/plugin/PluginOverlay;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 109
    iput-boolean v0, p0, Lcom/youku/player/base/YoukuPlayerView;->firstOnloaded:Z

    .line 110
    iput-boolean v0, p0, Lcom/youku/player/base/YoukuPlayerView;->realVideoStart:Z

    .line 117
    iput-boolean v0, p0, Lcom/youku/player/base/YoukuPlayerView;->isFullscreen:Z

    .line 348
    const/16 v0, 0x64

    iput v0, p0, Lcom/youku/player/base/YoukuPlayerView;->videoSize:I

    .line 1106
    new-instance v0, Lcom/youku/player/base/YoukuPlayerView$13;

    invoke-direct {v0, p0}, Lcom/youku/player/base/YoukuPlayerView$13;-><init>(Lcom/youku/player/base/YoukuPlayerView;)V

    iput-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->mCacheStufferAdapter:Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer$Proxy;

    .line 148
    invoke-direct {p0, p1}, Lcom/youku/player/base/YoukuPlayerView;->init(Landroid/content/Context;)V

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 142
    invoke-direct {p0, p1, p2, p3}, Lcom/youku/player/plugin/PluginOverlay;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 109
    iput-boolean v0, p0, Lcom/youku/player/base/YoukuPlayerView;->firstOnloaded:Z

    .line 110
    iput-boolean v0, p0, Lcom/youku/player/base/YoukuPlayerView;->realVideoStart:Z

    .line 117
    iput-boolean v0, p0, Lcom/youku/player/base/YoukuPlayerView;->isFullscreen:Z

    .line 348
    const/16 v0, 0x64

    iput v0, p0, Lcom/youku/player/base/YoukuPlayerView;->videoSize:I

    .line 1106
    new-instance v0, Lcom/youku/player/base/YoukuPlayerView$13;

    invoke-direct {v0, p0}, Lcom/youku/player/base/YoukuPlayerView$13;-><init>(Lcom/youku/player/base/YoukuPlayerView;)V

    iput-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->mCacheStufferAdapter:Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer$Proxy;

    .line 143
    invoke-direct {p0, p1}, Lcom/youku/player/base/YoukuPlayerView;->init(Landroid/content/Context;)V

    .line 144
    return-void
.end method

.method static synthetic access$000(Lcom/youku/player/base/YoukuPlayerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/base/YoukuPlayerView;

    .prologue
    .line 79
    iget v0, p0, Lcom/youku/player/base/YoukuPlayerView;->lastMeasuredWidth:I

    return v0
.end method

.method static synthetic access$002(Lcom/youku/player/base/YoukuPlayerView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/base/YoukuPlayerView;
    .param p1, "x1"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/youku/player/base/YoukuPlayerView;->lastMeasuredWidth:I

    return p1
.end method

.method static synthetic access$100(Lcom/youku/player/base/YoukuPlayerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/base/YoukuPlayerView;

    .prologue
    .line 79
    iget v0, p0, Lcom/youku/player/base/YoukuPlayerView;->lastMeasuredHeight:I

    return v0
.end method

.method static synthetic access$102(Lcom/youku/player/base/YoukuPlayerView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/base/YoukuPlayerView;
    .param p1, "x1"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/youku/player/base/YoukuPlayerView;->lastMeasuredHeight:I

    return p1
.end method

.method static synthetic access$200(Lcom/youku/player/base/YoukuPlayerView;)Lmaster/flame/danmaku/controller/IDanmakuView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/base/YoukuPlayerView;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuView:Lmaster/flame/danmaku/controller/IDanmakuView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/youku/player/base/YoukuPlayerView;)Lcom/youku/player/danmaku/DanmakuUtils;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/base/YoukuPlayerView;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuUtils:Lcom/youku/player/danmaku/DanmakuUtils;

    return-object v0
.end method

.method private createParser(Ljava/lang/String;)Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;
    .locals 6
    .param p1, "jsonArray"    # Ljava/lang/String;

    .prologue
    .line 946
    if-nez p1, :cond_0

    .line 947
    sget-object v4, Lcom/youku/player/LogTag;->TAG_DANMAKU:Ljava/lang/String;

    const-string/jumbo v5, "\u5f00\u59cb\u5f39\u5e55\uff0c\u4f46\u4f7f\u7528\u5047\u6570\u636e"

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    iget-object v4, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuUtils:Lcom/youku/player/danmaku/DanmakuUtils;

    invoke-interface {v4}, Lcom/youku/player/danmaku/DanmakuUtils;->getFakeJSONArray()Ljava/lang/String;

    move-result-object p1

    .line 951
    :cond_0
    iget-object v4, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuUtils:Lcom/youku/player/danmaku/DanmakuUtils;

    invoke-interface {v4}, Lcom/youku/player/danmaku/DanmakuUtils;->createDanmakuLoader()Lmaster/flame/danmaku/danmaku/loader/ILoader;

    move-result-object v2

    .line 954
    .local v2, "loader":Lmaster/flame/danmaku/danmaku/loader/ILoader;
    :try_start_0
    invoke-interface {v2, p1}, Lmaster/flame/danmaku/danmaku/loader/ILoader;->load(Ljava/lang/String;)V
    :try_end_0
    .catch Lmaster/flame/danmaku/danmaku/loader/IllegalDataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 958
    :goto_0
    iget-object v4, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuUtils:Lcom/youku/player/danmaku/DanmakuUtils;

    invoke-interface {v4}, Lcom/youku/player/danmaku/DanmakuUtils;->createDanmakuParser()Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;

    move-result-object v3

    .line 959
    .local v3, "parser":Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;
    invoke-interface {v2}, Lmaster/flame/danmaku/danmaku/loader/ILoader;->getDataSource()Lmaster/flame/danmaku/danmaku/parser/IDataSource;

    move-result-object v0

    .line 960
    .local v0, "dataSource":Lmaster/flame/danmaku/danmaku/parser/IDataSource;, "Lmaster/flame/danmaku/danmaku/parser/IDataSource<*>;"
    invoke-virtual {v3, v0}, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->load(Lmaster/flame/danmaku/danmaku/parser/IDataSource;)Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;

    .line 961
    return-object v3

    .line 955
    .end local v0    # "dataSource":Lmaster/flame/danmaku/danmaku/parser/IDataSource;, "Lmaster/flame/danmaku/danmaku/parser/IDataSource<*>;"
    .end local v3    # "parser":Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;
    :catch_0
    move-exception v1

    .line 956
    .local v1, "e":Lmaster/flame/danmaku/danmaku/loader/IllegalDataException;
    invoke-virtual {v1}, Lmaster/flame/danmaku/danmaku/loader/IllegalDataException;->printStackTrace()V

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/youku/player/base/YoukuPlayerView;->mContext:Landroid/content/Context;

    .line 161
    iget-object v1, p0, Lcom/youku/player/base/YoukuPlayerView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/player/base/YoukuPlayerView;->sp:Landroid/content/SharedPreferences;

    .line 162
    iget-object v1, p0, Lcom/youku/player/base/YoukuPlayerView;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/youku/player/base/YoukuPlayerView;->inflater:Landroid/view/LayoutInflater;

    .line 164
    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/player/config/MediaPlayerConfiguration;->getDanmakuUtils()Lcom/youku/player/danmaku/DanmakuUtils;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuUtils:Lcom/youku/player/danmaku/DanmakuUtils;

    .line 165
    iget-object v1, p0, Lcom/youku/player/base/YoukuPlayerView;->inflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/youku/android/player/R$layout;->yp_player_view:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 166
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/youku/player/base/YoukuPlayerView;->addView(Landroid/view/View;)V

    .line 167
    invoke-direct {p0}, Lcom/youku/player/base/YoukuPlayerView;->initLayout()V

    .line 168
    return-void
.end method

.method private initLayout()V
    .locals 3

    .prologue
    .line 174
    sget v1, Lcom/youku/android/player/R$id;->surface_view:I

    invoke-virtual {p0, v1}, Lcom/youku/player/base/YoukuPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/youku/player/NewSurfaceView;

    iput-object v1, p0, Lcom/youku/player/base/YoukuPlayerView;->surfaceView:Lcom/youku/player/NewSurfaceView;

    .line 175
    sget v1, Lcom/youku/android/player/R$id;->danmaku:I

    invoke-virtual {p0, v1}, Lcom/youku/player/base/YoukuPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;

    iput-object v1, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuView:Lmaster/flame/danmaku/controller/IDanmakuView;

    .line 176
    sget v1, Lcom/youku/android/player/R$id;->water_mark:I

    invoke-virtual {p0, v1}, Lcom/youku/player/base/YoukuPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/youku/player/base/YoukuPlayerView;->waterMark:Landroid/widget/ImageView;

    .line 177
    sget v1, Lcom/youku/android/player/R$id;->tudou_water_mark:I

    invoke-virtual {p0, v1}, Lcom/youku/player/base/YoukuPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/youku/player/base/YoukuPlayerView;->tudouWaterMark:Landroid/widget/ImageView;

    .line 178
    sget v1, Lcom/youku/android/player/R$id;->surface_view_debug:I

    invoke-virtual {p0, v1}, Lcom/youku/player/base/YoukuPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/youku/player/base/YoukuPlayerView;->playerDebugView:Landroid/widget/TextView;

    .line 179
    sget v1, Lcom/youku/android/player/R$id;->surface_black:I

    invoke-virtual {p0, v1}, Lcom/youku/player/base/YoukuPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/player/base/YoukuPlayerView;->surfaceBlack:Landroid/view/View;

    .line 181
    sget v1, Lcom/youku/android/player/R$id;->single_subtitle:I

    invoke-virtual {p0, v1}, Lcom/youku/player/base/YoukuPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/youku/player/subtitle/StrokeTextView;

    iput-object v1, p0, Lcom/youku/player/base/YoukuPlayerView;->singleSubtitle:Lcom/youku/player/subtitle/StrokeTextView;

    .line 183
    sget v1, Lcom/youku/android/player/R$id;->subtitle_first:I

    invoke-virtual {p0, v1}, Lcom/youku/player/base/YoukuPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/youku/player/subtitle/StrokeTextView;

    iput-object v1, p0, Lcom/youku/player/base/YoukuPlayerView;->firstSubtitle:Lcom/youku/player/subtitle/StrokeTextView;

    .line 185
    sget v1, Lcom/youku/android/player/R$id;->subtitle_second:I

    invoke-virtual {p0, v1}, Lcom/youku/player/base/YoukuPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/youku/player/subtitle/StrokeTextView;

    iput-object v1, p0, Lcom/youku/player/base/YoukuPlayerView;->secondSubtitle:Lcom/youku/player/subtitle/StrokeTextView;

    .line 187
    invoke-virtual {p0}, Lcom/youku/player/base/YoukuPlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 188
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/youku/android/player/R$dimen;->water_mark_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/youku/player/base/YoukuPlayerView;->waterMarkWidth:I

    .line 189
    sget v1, Lcom/youku/android/player/R$dimen;->water_mark_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/youku/player/base/YoukuPlayerView;->waterMarkHeight:I

    .line 190
    sget v1, Lcom/youku/android/player/R$dimen;->tudou_water_mark_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/youku/player/base/YoukuPlayerView;->tudouWaterMarkWidth:I

    .line 192
    sget v1, Lcom/youku/android/player/R$dimen;->tudou_water_mark_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/youku/player/base/YoukuPlayerView;->tudouWaterMarkHeight:I

    .line 194
    sget v1, Lcom/youku/android/player/R$dimen;->tudou_water_mark_margin_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/youku/player/base/YoukuPlayerView;->waterMarkMarginTop:I

    .line 196
    sget v1, Lcom/youku/android/player/R$dimen;->tudou_water_mark_margin_right:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/youku/player/base/YoukuPlayerView;->waterMarkMarginRight:I

    .line 198
    sget v1, Lcom/youku/android/player/R$dimen;->tudou_full_water_mark_margin_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/youku/player/base/YoukuPlayerView;->fullwaterMarkMarginTop:I

    .line 200
    sget v1, Lcom/youku/android/player/R$dimen;->tudou_full_water_mark_margin_right:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/youku/player/base/YoukuPlayerView;->fullwaterMarkMarginRight:I

    .line 202
    iget-object v1, p0, Lcom/youku/player/base/YoukuPlayerView;->waterMark:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/player/base/YoukuPlayerView;->layoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 203
    iget-object v1, p0, Lcom/youku/player/base/YoukuPlayerView;->tudouWaterMark:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/player/base/YoukuPlayerView;->tudouLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 204
    iget-object v1, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuView:Lmaster/flame/danmaku/controller/IDanmakuView;

    check-cast v1, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;

    invoke-virtual {v1}, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 206
    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/player/config/MediaPlayerConfiguration;->showTudouPadDanmaku()Z

    move-result v1

    iput-boolean v1, p0, Lcom/youku/player/base/YoukuPlayerView;->isTudouPadDanmaku:Z

    .line 207
    invoke-virtual {p0}, Lcom/youku/player/base/YoukuPlayerView;->initDanmakuLayout()V

    .line 208
    iget-object v1, p0, Lcom/youku/player/base/YoukuPlayerView;->surfaceView:Lcom/youku/player/NewSurfaceView;

    new-instance v2, Lcom/youku/player/base/YoukuPlayerView$1;

    invoke-direct {v2, p0}, Lcom/youku/player/base/YoukuPlayerView$1;-><init>(Lcom/youku/player/base/YoukuPlayerView;)V

    invoke-virtual {v1, v2}, Lcom/youku/player/NewSurfaceView;->setLayoutChangeListener(Lcom/youku/player/base/YoukuPlayerView$LayoutChangeListener;)V

    .line 226
    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/player/config/MediaPlayerConfiguration;->hideDanmaku()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuView:Lmaster/flame/danmaku/controller/IDanmakuView;

    if-eqz v1, :cond_0

    .line 228
    sget-object v1, Lcom/youku/player/LogTag;->TAG_DANMAKU:Ljava/lang/String;

    const-string/jumbo v2, "\u8bbe\u7f6e\u5f39\u5e55\u4e0d\u53ef\u89c1\u72b6\u6001"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v1, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuView:Lmaster/flame/danmaku/controller/IDanmakuView;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Lmaster/flame/danmaku/controller/IDanmakuView;->setVisibility(I)V

    .line 232
    :cond_0
    return-void
.end method

.method private trackPlayerLoad(J)V
    .locals 9
    .param p1, "duration"    # J

    .prologue
    .line 500
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 501
    .local v0, "currentTime":J
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 502
    .local v2, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "pltype"

    const-string v4, "playerload"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    const-string/jumbo v3, "s"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    const-string/jumbo v3, "st"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sub-long v6, v0, p1

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    const-string v3, "et"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    iget-object v3, p0, Lcom/youku/player/base/YoukuPlayerView;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "\u64ad\u653e\u5668\u52a0\u8f7d"

    const-string/jumbo v5, "\u8be6\u60c5\u9875"

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6, v2}, Lcom/youku/player/util/AnalyticsWrapper;->trackExtendCustomEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 509
    return-void
.end method


# virtual methods
.method public OnCurrentPositionChangeListener(I)V
    .locals 3
    .param p1, "currentPosition"    # I

    .prologue
    .line 307
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_2

    .line 309
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isComplete:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isSeeking:Z

    if-nez v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0, p1}, Lcom/youku/player/module/VideoUrlInfo;->setProgress(I)V

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-boolean v0, v0, Lcom/youku/player/module/VideoUrlInfo;->paid:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-boolean v0, v0, Lcom/youku/player/module/VideoUrlInfo;->paidSended:Z

    if-nez v0, :cond_1

    div-int/lit16 v0, p1, 0x3e8

    const/16 v1, 0x258

    if-ne v0, v1, :cond_1

    .line 315
    new-instance v0, Lcom/youku/player/service/DisposableHttpCookieTask;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://v.youku.com/player/wplaylog?vid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/player/base/YoukuPlayerView;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v2}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/youku/player/service/DisposableHttpCookieTask;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/youku/player/service/DisposableHttpCookieTask;->start()V

    .line 318
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/youku/player/module/VideoUrlInfo;->paidSended:Z

    .line 320
    :cond_1
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0, p1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isTrialOver(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 321
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->needPay()V

    .line 324
    :cond_2
    invoke-virtual {p0}, Lcom/youku/player/base/YoukuPlayerView;->setPlayerBlackGone()V

    .line 325
    return-void
.end method

.method public OnPreparedListener()V
    .locals 0

    .prologue
    .line 275
    return-void
.end method

.method public OnSeekCompleteListener()V
    .locals 1

    .prologue
    .line 279
    const-string/jumbo v0, "seek\u5b8c\u6210OnSeekCompleteListener"

    invoke-virtual {p0, v0}, Lcom/youku/player/base/YoukuPlayerView;->setDebugText(Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method public OnTimeoutListener()V
    .locals 1

    .prologue
    .line 301
    const-string/jumbo v0, "\u8d85\u65f6 OnTimeoutListener"

    invoke-virtual {p0, v0}, Lcom/youku/player/base/YoukuPlayerView;->setDebugText(Ljava/lang/String;)V

    .line 302
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/player/base/YoukuPlayerView;->firstOnloaded:Z

    .line 303
    return-void
.end method

.method public OnVideoSizeChangedListener(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 284
    iget v0, p0, Lcom/youku/player/base/YoukuPlayerView;->mVideoHeight:I

    if-ne v0, p2, :cond_1

    iget v0, p0, Lcom/youku/player/base/YoukuPlayerView;->mVideoWidth:I

    if-ne v0, p1, :cond_1

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    iput p1, p0, Lcom/youku/player/base/YoukuPlayerView;->mVideoWidth:I

    .line 288
    iput p2, p0, Lcom/youku/player/base/YoukuPlayerView;->mVideoHeight:I

    .line 289
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 290
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->mActivity:Landroid/support/v4/app/FragmentActivity;

    new-instance v1, Lcom/youku/player/base/YoukuPlayerView$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/youku/player/base/YoukuPlayerView$3;-><init>(Lcom/youku/player/base/YoukuPlayerView;II)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public addDanmaku(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 8
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lmaster/flame/danmaku/danmaku/model/LiveDanmakuInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 967
    .local p2, "liveDanmakuInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmaster/flame/danmaku/danmaku/model/LiveDanmakuInfo;>;"
    :try_start_0
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuView:Lmaster/flame/danmaku/controller/IDanmakuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->mParser:Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuUtils:Lcom/youku/player/danmaku/DanmakuUtils;

    if-eqz v0, :cond_0

    .line 968
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuUtils:Lcom/youku/player/danmaku/DanmakuUtils;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuView:Lmaster/flame/danmaku/controller/IDanmakuView;

    iget-object v3, p0, Lcom/youku/player/base/YoukuPlayerView;->mParser:Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;

    iget-object v4, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuView:Lmaster/flame/danmaku/controller/IDanmakuView;

    invoke-interface {v4}, Lmaster/flame/danmaku/controller/IDanmakuView;->getCurrentTime()J

    move-result-wide v4

    move-object v6, p2

    invoke-interface/range {v0 .. v6}, Lcom/youku/player/danmaku/DanmakuUtils;->addDanmaku(Lorg/json/JSONObject;Lmaster/flame/danmaku/controller/IDanmakuView;Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;JLjava/util/ArrayList;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 974
    :cond_0
    :goto_0
    return-void

    .line 971
    :catch_0
    move-exception v7

    .line 972
    .local v7, "e":Lorg/json/JSONException;
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public back()V
    .locals 0

    .prologue
    .line 630
    return-void
.end method

.method public beginDanmaku(Ljava/lang/String;J)V
    .locals 4
    .param p1, "jsonArray"    # Ljava/lang/String;
    .param p2, "beginTime"    # J

    .prologue
    .line 869
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuView:Lmaster/flame/danmaku/controller/IDanmakuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuUtils:Lcom/youku/player/danmaku/DanmakuUtils;

    if-eqz v0, :cond_0

    .line 870
    invoke-direct {p0, p1}, Lcom/youku/player/base/YoukuPlayerView;->createParser(Ljava/lang/String;)Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->mParser:Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;

    .line 871
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuUtils:Lcom/youku/player/danmaku/DanmakuUtils;

    iget-object v1, p0, Lcom/youku/player/base/YoukuPlayerView;->mParser:Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;

    iget-object v2, p0, Lcom/youku/player/base/YoukuPlayerView;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, v2}, Lcom/youku/player/danmaku/DanmakuUtils;->setTextSize(Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;Landroid/content/Context;)V

    .line 872
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuUtils:Lcom/youku/player/danmaku/DanmakuUtils;

    iget-object v1, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v2, p0, Lcom/youku/player/base/YoukuPlayerView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v1, v2}, Lcom/youku/player/danmaku/DanmakuUtils;->setDanmakuContextAndDrawable(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;Landroid/graphics/drawable/Drawable;)V

    .line 873
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuView:Lmaster/flame/danmaku/controller/IDanmakuView;

    new-instance v1, Lcom/youku/player/base/YoukuPlayerView$12;

    invoke-direct {v1, p0, p2, p3}, Lcom/youku/player/base/YoukuPlayerView$12;-><init>(Lcom/youku/player/base/YoukuPlayerView;J)V

    invoke-interface {v0, v1}, Lmaster/flame/danmaku/controller/IDanmakuView;->setCallback(Lmaster/flame/danmaku/controller/DrawHandler$Callback;)V

    .line 890
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuView:Lmaster/flame/danmaku/controller/IDanmakuView;

    iget-object v1, p0, Lcom/youku/player/base/YoukuPlayerView;->mParser:Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;

    iget-object v2, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-interface {v0, v1, v2}, Lmaster/flame/danmaku/controller/IDanmakuView;->prepare(Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)V

    .line 892
    :cond_0
    return-void
.end method

.method public dismissFirstSubtitle()V
    .locals 2

    .prologue
    .line 794
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->firstSubtitle:Lcom/youku/player/subtitle/StrokeTextView;

    if-eqz v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->mActivity:Landroid/support/v4/app/FragmentActivity;

    new-instance v1, Lcom/youku/player/base/YoukuPlayerView$7;

    invoke-direct {v1, p0}, Lcom/youku/player/base/YoukuPlayerView$7;-><init>(Lcom/youku/player/base/YoukuPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 803
    :cond_0
    return-void
.end method

.method public dismissSecondSubtitle()V
    .locals 2

    .prologue
    .line 820
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->secondSubtitle:Lcom/youku/player/subtitle/StrokeTextView;

    if-eqz v0, :cond_0

    .line 821
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->mActivity:Landroid/support/v4/app/FragmentActivity;

    new-instance v1, Lcom/youku/player/base/YoukuPlayerView$9;

    invoke-direct {v1, p0}, Lcom/youku/player/base/YoukuPlayerView$9;-><init>(Lcom/youku/player/base/YoukuPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 829
    :cond_0
    return-void
.end method

.method public dismissSingleSubtitle()V
    .locals 2

    .prologue
    .line 846
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->singleSubtitle:Lcom/youku/player/subtitle/StrokeTextView;

    if-eqz v0, :cond_0

    .line 847
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->mActivity:Landroid/support/v4/app/FragmentActivity;

    new-instance v1, Lcom/youku/player/base/YoukuPlayerView$11;

    invoke-direct {v1, p0}, Lcom/youku/player/base/YoukuPlayerView$11;-><init>(Lcom/youku/player/base/YoukuPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 855
    :cond_0
    return-void
.end method

.method public getDanmakuSurfaceView()Lmaster/flame/danmaku/controller/IDanmakuView;
    .locals 1

    .prologue
    .line 977
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuView:Lmaster/flame/danmaku/controller/IDanmakuView;

    return-object v0
.end method

.method public hideDanmaku()V
    .locals 1

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuView:Lmaster/flame/danmaku/controller/IDanmakuView;

    if-eqz v0, :cond_0

    .line 1038
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuView:Lmaster/flame/danmaku/controller/IDanmakuView;

    invoke-interface {v0}, Lmaster/flame/danmaku/controller/IDanmakuView;->hide()V

    .line 1040
    :cond_0
    return-void
.end method

.method public initDanmakuLayout()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1094
    invoke-static {}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->create()Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 1095
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    new-instance v1, Lmaster/flame/danmaku/danmaku/model/android/SpannedCacheStuffer;

    invoke-direct {v1}, Lmaster/flame/danmaku/danmaku/model/android/SpannedCacheStuffer;-><init>()V

    iget-object v2, p0, Lcom/youku/player/base/YoukuPlayerView;->mCacheStufferAdapter:Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer$Proxy;

    invoke-virtual {v0, v1, v2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->setCacheStuffer(Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer$Proxy;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 1096
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    new-array v1, v4, [F

    const/high16 v2, 0x40400000    # 3.0f

    aput v2, v1, v3

    invoke-virtual {v0, v4, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->setDanmakuStyle(I[F)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 1098
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/youku/android/player/R$drawable;->default_danmu:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 1099
    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/config/MediaPlayerConfiguration;->hideDanmaku()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1100
    invoke-virtual {p0, v3}, Lcom/youku/player/base/YoukuPlayerView;->setDanmakuEffect(I)V

    .line 1104
    :goto_0
    return-void

    .line 1102
    :cond_0
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/youku/player/goplay/Profile;->getDanmakuEffect(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/youku/player/base/YoukuPlayerView;->setDanmakuEffect(I)V

    goto :goto_0
.end method

.method public initialize(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Long;Ljava/lang/String;)V
    .locals 4
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "platformId"    # I
    .param p3, "pid"    # Ljava/lang/String;
    .param p4, "verName"    # Ljava/lang/String;
    .param p5, "userAgent"    # Ljava/lang/String;
    .param p6, "useSystemPlayer"    # Z
    .param p7, "timeStamp"    # Ljava/lang/Long;
    .param p8, "secret"    # Ljava/lang/String;

    .prologue
    .line 475
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 476
    .local v0, "begin":J
    iput-object p1, p0, Lcom/youku/player/base/YoukuPlayerView;->mActivity:Landroid/support/v4/app/FragmentActivity;

    .line 477
    sput-boolean p6, Lcom/youku/player/goplay/Profile;->USE_SYSTEM_PLAYER:Z

    .line 478
    new-instance v2, Lcom/youku/player/base/YoukuPlayer;

    invoke-direct {v2, p1, p0}, Lcom/youku/player/base/YoukuPlayer;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/youku/player/base/YoukuPlayerView;)V

    iput-object v2, p0, Lcom/youku/player/base/YoukuPlayerView;->player:Lcom/youku/player/base/YoukuPlayer;

    .line 479
    iget-object v2, p0, Lcom/youku/player/base/YoukuPlayerView;->player:Lcom/youku/player/base/YoukuPlayer;

    invoke-virtual {v2}, Lcom/youku/player/base/YoukuPlayer;->getPlayerUiControl()Lcom/youku/player/apiservice/IPlayerUiControl;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/player/base/YoukuPlayerView;->mPlayerController:Lcom/youku/player/apiservice/IPlayerUiControl;

    .line 480
    iget-object v2, p0, Lcom/youku/player/base/YoukuPlayerView;->mPlayerController:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v2}, Lcom/youku/player/apiservice/IPlayerUiControl;->initLayoutView()V

    .line 481
    sput p2, Lcom/youku/player/goplay/Profile;->PLANTFORM:I

    .line 482
    sput-object p3, Lcom/youku/player/goplay/Profile;->pid:Ljava/lang/String;

    .line 483
    sput-object p5, Lcom/youku/player/goplay/Profile;->USER_AGENT:Ljava/lang/String;

    .line 484
    sput-object p7, Lcom/baseproject/utils/Util;->TIME_STAMP:Ljava/lang/Long;

    .line 485
    sput-object p8, Lcom/baseproject/utils/Util;->SECRET:Ljava/lang/String;

    .line 486
    sput-object p4, Lcom/youku/player/util/URLContainer;->verName:Ljava/lang/String;

    .line 487
    invoke-static {}, Lcom/youku/player/util/URLContainer;->getStatisticsParameter()V

    .line 488
    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    .line 489
    iget-object v2, p0, Lcom/youku/player/base/YoukuPlayerView;->mPlayerController:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v2}, Lcom/youku/player/apiservice/IPlayerUiControl;->onCreate()V

    .line 490
    check-cast p1, Lcom/youku/player/apiservice/OnInitializedListener;

    .end local p1    # "activity":Landroid/support/v4/app/FragmentActivity;
    iget-object v2, p0, Lcom/youku/player/base/YoukuPlayerView;->player:Lcom/youku/player/base/YoukuPlayer;

    invoke-interface {p1, v2}, Lcom/youku/player/apiservice/OnInitializedListener;->onInitializationSuccess(Lcom/youku/player/base/YoukuPlayer;)V

    .line 491
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-direct {p0, v2, v3}, Lcom/youku/player/base/YoukuPlayerView;->trackPlayerLoad(J)V

    .line 492
    return-void
.end method

.method public initialize(Lcom/youku/player/base/YoukuBasePlayerActivity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9
    .param p1, "mYoukuBaseActivity"    # Lcom/youku/player/base/YoukuBasePlayerActivity;
    .param p2, "platformId"    # I
    .param p3, "pid"    # Ljava/lang/String;
    .param p4, "verName"    # Ljava/lang/String;
    .param p5, "userAgent"    # Ljava/lang/String;
    .param p6, "useSystemPlayer"    # Z

    .prologue
    const/4 v7, 0x0

    .line 452
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object v8, v7

    invoke-virtual/range {v0 .. v8}, Lcom/youku/player/base/YoukuPlayerView;->initialize(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Long;Ljava/lang/String;)V

    .line 454
    return-void
.end method

.method public newVideo()V
    .locals 1

    .prologue
    .line 529
    const-string/jumbo v0, "\u65b0\u89c6\u9891newVideo"

    invoke-virtual {p0, v0}, Lcom/youku/player/base/YoukuPlayerView;->setDebugText(Ljava/lang/String;)V

    .line 530
    return-void
.end method

.method public onADplaying()V
    .locals 1

    .prologue
    .line 604
    const-string/jumbo v0, "\u5e7f\u544a\u6b63\u5728\u64ad\u653e onADplaying"

    invoke-virtual {p0, v0}, Lcom/youku/player/base/YoukuPlayerView;->setDebugText(Ljava/lang/String;)V

    .line 606
    return-void
.end method

.method public onBufferingUpdateListener(I)V
    .locals 0
    .param p1, "percent"    # I

    .prologue
    .line 258
    return-void
.end method

.method public onClearUpDownFav()V
    .locals 0

    .prologue
    .line 621
    return-void
.end method

.method public onCompletionListener()V
    .locals 1

    .prologue
    .line 262
    const-string/jumbo v0, "\u64ad\u653e\u5b8c\u6210onCompletionListener"

    invoke-virtual {p0, v0}, Lcom/youku/player/base/YoukuPlayerView;->setDebugText(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0}, Lcom/youku/player/base/YoukuPlayerView;->setPlayerBlack()V

    .line 264
    return-void
.end method

.method public onDown()V
    .locals 0

    .prologue
    .line 517
    return-void
.end method

.method public onErrorListener(II)Z
    .locals 1
    .param p1, "what"    # I
    .param p2, "extra"    # I

    .prologue
    const/4 v0, 0x0

    .line 269
    iput-boolean v0, p0, Lcom/youku/player/base/YoukuPlayerView;->firstOnloaded:Z

    .line 270
    return v0
.end method

.method public onFavor()V
    .locals 0

    .prologue
    .line 521
    return-void
.end method

.method public onLoadedListener()V
    .locals 1

    .prologue
    .line 329
    const-string/jumbo v0, "\u7f13\u51b2\u5b8c\u6210onLoadedListener"

    invoke-virtual {p0, v0}, Lcom/youku/player/base/YoukuPlayerView;->setDebugText(Ljava/lang/String;)V

    .line 330
    iget-boolean v0, p0, Lcom/youku/player/base/YoukuPlayerView;->firstOnloaded:Z

    if-nez v0, :cond_0

    .line 331
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/player/base/YoukuPlayerView;->firstOnloaded:Z

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->surfaceBlack:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 334
    invoke-virtual {p0}, Lcom/youku/player/base/YoukuPlayerView;->setPlayerBlackGone()V

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/youku/player/Track;->onChangVideoQualityEnd(Landroid/content/Context;)V

    .line 338
    sget-boolean v0, Lcom/youku/player/Track;->mIsChangingLanguage:Z

    if-eqz v0, :cond_2

    .line 339
    const/4 v0, 0x0

    sput-boolean v0, Lcom/youku/player/Track;->mIsChangingLanguage:Z

    .line 341
    :cond_2
    return-void
.end method

.method public onLoadingListener()V
    .locals 1

    .prologue
    .line 345
    const-string/jumbo v0, "\u7f13\u51b2\u4e2donLoadingListener"

    invoke-virtual {p0, v0}, Lcom/youku/player/base/YoukuPlayerView;->setDebugText(Ljava/lang/String;)V

    .line 346
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    .line 901
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 902
    .local v1, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 904
    .local v0, "height":I
    iget-object v2, p0, Lcom/youku/player/base/YoukuPlayerView;->surfaceView:Lcom/youku/player/NewSurfaceView;

    invoke-virtual {v2, v1, v0}, Lcom/youku/player/NewSurfaceView;->setParentSize(II)V

    .line 905
    invoke-virtual {p0}, Lcom/youku/player/base/YoukuPlayerView;->zoomTudouWaterMark()V

    .line 906
    iget-boolean v2, p0, Lcom/youku/player/base/YoukuPlayerView;->isFullscreen:Z

    if-nez v2, :cond_3

    .line 907
    invoke-virtual {p0}, Lcom/youku/player/base/YoukuPlayerView;->zoomDanmakuSmallView()V

    .line 908
    const/4 v2, 0x5

    invoke-virtual {p0, v5, v2}, Lcom/youku/player/base/YoukuPlayerView;->zoomWaterMark(II)V

    .line 909
    iget-object v2, p0, Lcom/youku/player/base/YoukuPlayerView;->mPlayerController:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v2}, Lcom/youku/player/apiservice/IPlayerUiControl;->getDanmakuManager()Lcom/youku/player/danmaku/IDanmakuManager;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 910
    iget-object v2, p0, Lcom/youku/player/base/YoukuPlayerView;->mPlayerController:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v2}, Lcom/youku/player/apiservice/IPlayerUiControl;->getDanmakuManager()Lcom/youku/player/danmaku/IDanmakuManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/youku/player/danmaku/IDanmakuManager;->setDanmakuTextScale(Z)V

    .line 911
    iget-object v2, p0, Lcom/youku/player/base/YoukuPlayerView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/youku/player/goplay/Profile;->getDanmakuSwith(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/youku/player/base/YoukuPlayerView;->mPlayerController:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v2}, Lcom/youku/player/apiservice/IPlayerUiControl;->getDanmakuManager()Lcom/youku/player/danmaku/IDanmakuManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/youku/player/danmaku/IDanmakuManager;->isPaused()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/youku/player/base/YoukuPlayerView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/youku/player/goplay/Profile;->getLiveDanmakuSwith(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/youku/player/base/YoukuPlayerView;->mPlayerController:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v2}, Lcom/youku/player/apiservice/IPlayerUiControl;->getDanmakuManager()Lcom/youku/player/danmaku/IDanmakuManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/youku/player/danmaku/IDanmakuManager;->isHls()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 915
    :cond_1
    iget-object v2, p0, Lcom/youku/player/base/YoukuPlayerView;->mPlayerController:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v2}, Lcom/youku/player/apiservice/IPlayerUiControl;->getDanmakuManager()Lcom/youku/player/danmaku/IDanmakuManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/youku/player/danmaku/IDanmakuManager;->hideDanmakuWhenRotate()V

    .line 938
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/youku/player/plugin/PluginOverlay;->onMeasure(II)V

    .line 939
    return-void

    .line 919
    :cond_3
    invoke-virtual {p0}, Lcom/youku/player/base/YoukuPlayerView;->zoomDanmakuView()V

    .line 920
    iget-object v2, p0, Lcom/youku/player/base/YoukuPlayerView;->mPlayerController:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v2}, Lcom/youku/player/apiservice/IPlayerUiControl;->getDanmakuManager()Lcom/youku/player/danmaku/IDanmakuManager;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 921
    iget-object v2, p0, Lcom/youku/player/base/YoukuPlayerView;->mPlayerController:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v2}, Lcom/youku/player/apiservice/IPlayerUiControl;->getDanmakuManager()Lcom/youku/player/danmaku/IDanmakuManager;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/youku/player/danmaku/IDanmakuManager;->setDanmakuTextScale(Z)V

    .line 922
    iget-object v2, p0, Lcom/youku/player/base/YoukuPlayerView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/youku/player/goplay/Profile;->getDanmakuSwith(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/youku/player/base/YoukuPlayerView;->mPlayerController:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v2}, Lcom/youku/player/apiservice/IPlayerUiControl;->getDanmakuManager()Lcom/youku/player/danmaku/IDanmakuManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/youku/player/danmaku/IDanmakuManager;->isPaused()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/youku/player/base/YoukuPlayerView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/youku/player/goplay/Profile;->getLiveDanmakuSwith(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/youku/player/base/YoukuPlayerView;->mPlayerController:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v2}, Lcom/youku/player/apiservice/IPlayerUiControl;->getDanmakuManager()Lcom/youku/player/danmaku/IDanmakuManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/youku/player/danmaku/IDanmakuManager;->isHls()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 926
    :cond_5
    iget-object v2, p0, Lcom/youku/player/base/YoukuPlayerView;->mPlayerController:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v2}, Lcom/youku/player/apiservice/IPlayerUiControl;->getDanmakuManager()Lcom/youku/player/danmaku/IDanmakuManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/youku/player/danmaku/IDanmakuManager;->showDanmakuWhenRotate()V

    .line 929
    :cond_6
    iget v2, p0, Lcom/youku/player/base/YoukuPlayerView;->videoSize:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_7

    iget v2, p0, Lcom/youku/player/base/YoukuPlayerView;->videoSize:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_8

    .line 931
    :cond_7
    invoke-virtual {p0, v4, v4}, Lcom/youku/player/base/YoukuPlayerView;->zoomWaterMark(II)V

    goto :goto_0

    .line 932
    :cond_8
    iget v2, p0, Lcom/youku/player/base/YoukuPlayerView;->videoSize:I

    const/16 v3, 0x32

    if-ne v2, v3, :cond_9

    .line 933
    const/4 v2, 0x2

    invoke-virtual {p0, v4, v2}, Lcom/youku/player/base/YoukuPlayerView;->zoomWaterMark(II)V

    goto :goto_0

    .line 934
    :cond_9
    iget v2, p0, Lcom/youku/player/base/YoukuPlayerView;->videoSize:I

    const/16 v3, 0x4b

    if-ne v2, v3, :cond_2

    .line 935
    const/4 v2, 0x3

    invoke-virtual {p0, v2, v5}, Lcom/youku/player/base/YoukuPlayerView;->zoomWaterMark(II)V

    goto :goto_0
.end method

.method public onMute(Z)V
    .locals 1
    .param p1, "mute"    # Z

    .prologue
    .line 544
    const-string/jumbo v0, "\u9759\u97f3onMute"

    invoke-virtual {p0, v0}, Lcom/youku/player/base/YoukuPlayerView;->setDebugText(Ljava/lang/String;)V

    .line 545
    return-void
.end method

.method public onNotifyChangeVideoQuality()V
    .locals 1

    .prologue
    .line 589
    const-string/jumbo v0, "\u64ad\u653e\u6e05\u6670\u5ea6\u53d8\u5316onNotifyChangeVideoQuality"

    invoke-virtual {p0, v0}, Lcom/youku/player/base/YoukuPlayerView;->setDebugText(Ljava/lang/String;)V

    .line 590
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 626
    return-void
.end method

.method public onPlayNoRightVideo(Lcom/youku/player/goplay/GoplayException;)V
    .locals 0
    .param p1, "e"    # Lcom/youku/player/goplay/GoplayException;

    .prologue
    .line 665
    return-void
.end method

.method public onPlayReleateNoRightVideo()V
    .locals 0

    .prologue
    .line 670
    return-void
.end method

.method public onRealVideoStart()V
    .locals 2

    .prologue
    .line 594
    const-string/jumbo v0, "\u6b63\u7247\u5f00\u59cb\u64ad\u653e onRealVideoStart"

    invoke-virtual {p0, v0}, Lcom/youku/player/base/YoukuPlayerView;->setDebugText(Ljava/lang/String;)V

    .line 595
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/player/base/YoukuPlayerView;->realVideoStart:Z

    .line 596
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->surfaceView:Lcom/youku/player/NewSurfaceView;

    invoke-virtual {v0}, Lcom/youku/player/NewSurfaceView;->getOrientation()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    iget-object v1, p0, Lcom/youku/player/base/YoukuPlayerView;->surfaceView:Lcom/youku/player/NewSurfaceView;

    invoke-virtual {v1}, Lcom/youku/player/NewSurfaceView;->getOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youku/player/BaseMediaPlayer;->setVideoOrientation(I)V

    .line 599
    :cond_0
    invoke-virtual {p0}, Lcom/youku/player/base/YoukuPlayerView;->setupWaterMark()V

    .line 600
    return-void
.end method

.method public onRealVideoStarted()V
    .locals 0

    .prologue
    .line 611
    return-void
.end method

.method public onRelease()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 859
    invoke-super {p0}, Lcom/youku/player/plugin/PluginOverlay;->onRelease()V

    .line 861
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->singleSubtitle:Lcom/youku/player/subtitle/StrokeTextView;

    invoke-virtual {v0, v1}, Lcom/youku/player/subtitle/StrokeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 863
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->firstSubtitle:Lcom/youku/player/subtitle/StrokeTextView;

    invoke-virtual {v0, v1}, Lcom/youku/player/subtitle/StrokeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 865
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->secondSubtitle:Lcom/youku/player/subtitle/StrokeTextView;

    invoke-virtual {v0, v1}, Lcom/youku/player/subtitle/StrokeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 866
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 616
    return-void
.end method

.method public onUnFavor()V
    .locals 0

    .prologue
    .line 525
    return-void
.end method

.method public onUp()V
    .locals 0

    .prologue
    .line 513
    return-void
.end method

.method public onVideoChange()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 549
    const-string/jumbo v0, "\u83b7\u53d6\u4fe1\u606f\u4e2donVideoChange"

    invoke-virtual {p0, v0}, Lcom/youku/player/base/YoukuPlayerView;->setDebugText(Ljava/lang/String;)V

    .line 550
    iput-boolean v1, p0, Lcom/youku/player/base/YoukuPlayerView;->firstOnloaded:Z

    .line 551
    iput-boolean v1, p0, Lcom/youku/player/base/YoukuPlayerView;->realVideoStart:Z

    .line 552
    return-void
.end method

.method public onVideoInfoGetFail(Z)V
    .locals 1
    .param p1, "needRetry"    # Z

    .prologue
    .line 569
    const-string/jumbo v0, "\u83b7\u53d6\u4fe1\u606f\u5931\u8d25onVideoInfoGetFail"

    invoke-virtual {p0, v0}, Lcom/youku/player/base/YoukuPlayerView;->setDebugText(Ljava/lang/String;)V

    .line 570
    return-void
.end method

.method public onVideoInfoGetted()V
    .locals 0

    .prologue
    .line 565
    return-void
.end method

.method public onVideoInfoGetting()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 556
    const-string/jumbo v0, "\u83b7\u53d6\u4fe1\u606f\u4e2donVideoInfoGetting"

    invoke-virtual {p0, v0}, Lcom/youku/player/base/YoukuPlayerView;->setDebugText(Ljava/lang/String;)V

    .line 557
    iput-boolean v1, p0, Lcom/youku/player/base/YoukuPlayerView;->firstOnloaded:Z

    .line 558
    invoke-virtual {p0}, Lcom/youku/player/base/YoukuPlayerView;->setPlayerBlack()V

    .line 559
    iput-boolean v1, p0, Lcom/youku/player/base/YoukuPlayerView;->realVideoStart:Z

    .line 560
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->surfaceView:Lcom/youku/player/NewSurfaceView;

    invoke-virtual {v0, v1}, Lcom/youku/player/NewSurfaceView;->setOrientation(I)V

    .line 561
    return-void
.end method

.method public onVolumnDown()V
    .locals 1

    .prologue
    .line 539
    const-string/jumbo v0, "\u97f3\u91cf\u8c03\u5c0fonVolumnDown"

    invoke-virtual {p0, v0}, Lcom/youku/player/base/YoukuPlayerView;->setDebugText(Ljava/lang/String;)V

    .line 540
    return-void
.end method

.method public onVolumnUp()V
    .locals 1

    .prologue
    .line 534
    const-string/jumbo v0, "\u97f3\u91cf\u8c03\u5927onVolumnUp"

    invoke-virtual {p0, v0}, Lcom/youku/player/base/YoukuPlayerView;->setDebugText(Ljava/lang/String;)V

    .line 535
    return-void
.end method

.method public pauseDanmaku()V
    .locals 1

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuView:Lmaster/flame/danmaku/controller/IDanmakuView;

    if-eqz v0, :cond_0

    .line 1012
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuView:Lmaster/flame/danmaku/controller/IDanmakuView;

    invoke-interface {v0}, Lmaster/flame/danmaku/controller/IDanmakuView;->pause()V

    .line 1014
    :cond_0
    return-void
.end method

.method protected playComplete()V
    .locals 2

    .prologue
    .line 580
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/youku/player/Track;->setplayCompleted(Z)V

    .line 581
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->release()V

    .line 583
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/player/module/VideoUrlInfo;->setProgress(I)V

    .line 585
    :cond_0
    return-void
.end method

.method public recreateSurfaceHolder()V
    .locals 2

    .prologue
    .line 673
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v1, "recreateSurfaceHolder"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->surfaceView:Lcom/youku/player/NewSurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->surfaceView:Lcom/youku/player/NewSurfaceView;

    invoke-virtual {v0}, Lcom/youku/player/NewSurfaceView;->recreateSurfaceHolder()V

    .line 676
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/youku/player/base/YoukuPlayerView;->setWaterMarkVisible(Z)V

    .line 677
    return-void
.end method

.method public releaseDanmaku()V
    .locals 1

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuView:Lmaster/flame/danmaku/controller/IDanmakuView;

    if-eqz v0, :cond_0

    .line 1044
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuView:Lmaster/flame/danmaku/controller/IDanmakuView;

    invoke-interface {v0}, Lmaster/flame/danmaku/controller/IDanmakuView;->release()V

    .line 1046
    :cond_0
    return-void
.end method

.method public resizeMediaPlayer(Z)V
    .locals 3
    .param p1, "force"    # Z

    .prologue
    const/16 v2, 0x64

    .line 359
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "video_size"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/youku/player/base/YoukuPlayerView;->videoSize:I

    .line 365
    :goto_0
    iget v0, p0, Lcom/youku/player/base/YoukuPlayerView;->videoSize:I

    invoke-virtual {p0, v0, p1}, Lcom/youku/player/base/YoukuPlayerView;->resizeVideoView(IZ)V

    .line 367
    :cond_0
    return-void

    .line 363
    :cond_1
    iput v2, p0, Lcom/youku/player/base/YoukuPlayerView;->videoSize:I

    goto :goto_0
.end method

.method public resizeVideoView(IZ)V
    .locals 1
    .param p1, "percent"    # I
    .param p2, "force"    # Z

    .prologue
    .line 391
    iput p1, p0, Lcom/youku/player/base/YoukuPlayerView;->videoSize:I

    .line 392
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->surfaceView:Lcom/youku/player/NewSurfaceView;

    invoke-virtual {v0, p1}, Lcom/youku/player/NewSurfaceView;->setViewPercent(I)V

    .line 393
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->surfaceView:Lcom/youku/player/NewSurfaceView;

    invoke-virtual {v0}, Lcom/youku/player/NewSurfaceView;->requestLayout()V

    .line 394
    return-void
.end method

.method public resumeDanmaku()V
    .locals 1

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuView:Lmaster/flame/danmaku/controller/IDanmakuView;

    if-eqz v0, :cond_0

    .line 1019
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuView:Lmaster/flame/danmaku/controller/IDanmakuView;

    invoke-interface {v0}, Lmaster/flame/danmaku/controller/IDanmakuView;->resume()V

    .line 1021
    :cond_0
    return-void
.end method

.method public seekToDanmaku(Ljava/lang/Long;)V
    .locals 1
    .param p1, "ms"    # Ljava/lang/Long;

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuView:Lmaster/flame/danmaku/controller/IDanmakuView;

    if-eqz v0, :cond_0

    .line 1026
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuView:Lmaster/flame/danmaku/controller/IDanmakuView;

    invoke-interface {v0, p1}, Lmaster/flame/danmaku/controller/IDanmakuView;->seekTo(Ljava/lang/Long;)V

    .line 1028
    :cond_0
    return-void
.end method

.method public sendDanmaku(IIILjava/lang/CharSequence;)Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .locals 6
    .param p1, "size"    # I
    .param p2, "position"    # I
    .param p3, "color"    # I
    .param p4, "content"    # Ljava/lang/CharSequence;

    .prologue
    const/high16 v1, -0x1000000

    .line 982
    iget-object v2, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuView:Lmaster/flame/danmaku/controller/IDanmakuView;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/youku/player/base/YoukuPlayerView;->mParser:Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuUtils:Lcom/youku/player/danmaku/DanmakuUtils;

    if-eqz v2, :cond_5

    .line 983
    iget-object v2, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v2, v2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;

    invoke-virtual {v2, p2}, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->createDanmaku(I)Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    move-result-object v0

    .line 984
    .local v0, "danmaku":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    if-eqz v0, :cond_2

    .line 985
    iput-object p4, v0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->text:Ljava/lang/CharSequence;

    .line 986
    const/4 v2, 0x1

    iput-byte v2, v0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->priority:B

    .line 987
    iget-object v2, p0, Lcom/youku/player/base/YoukuPlayerView;->mParser:Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;

    invoke-virtual {v2}, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->getTimer()Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 988
    iget-object v2, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuUtils:Lcom/youku/player/danmaku/DanmakuUtils;

    iget-object v3, p0, Lcom/youku/player/base/YoukuPlayerView;->mParser:Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;

    iget-object v4, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuView:Lmaster/flame/danmaku/controller/IDanmakuView;

    invoke-interface {v4}, Lmaster/flame/danmaku/controller/IDanmakuView;->getCurrentTime()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Lcom/youku/player/danmaku/DanmakuUtils;->getCurrentMillisecond(Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;J)J

    move-result-wide v2

    const-wide/16 v4, 0x64

    add-long/2addr v2, v4

    iput-wide v2, v0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->time:J

    .line 990
    :cond_0
    iget-object v2, p0, Lcom/youku/player/base/YoukuPlayerView;->mParser:Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;

    invoke-virtual {v2}, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->getDisplayer()Lmaster/flame/danmaku/danmaku/model/IDisplayer;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 991
    iget-object v2, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuUtils:Lcom/youku/player/danmaku/DanmakuUtils;

    invoke-interface {v2}, Lcom/youku/player/danmaku/DanmakuUtils;->getTextSize()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/youku/player/base/YoukuPlayerView;->mParser:Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;

    invoke-virtual {v3}, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->getDisplayer()Lmaster/flame/danmaku/danmaku/model/IDisplayer;

    move-result-object v3

    invoke-interface {v3}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->getDensity()F

    move-result v3

    const v4, 0x3f19999a    # 0.6f

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    iput v2, v0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->textSize:F

    .line 994
    :cond_1
    or-int v2, p3, v1

    iput v2, v0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->textColor:I

    .line 995
    instance-of v2, p4, Landroid/text/Spanned;

    if-eqz v2, :cond_3

    .line 996
    const/4 v1, 0x0

    iput v1, v0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->textShadowColor:I

    .line 1002
    :goto_0
    iget-object v1, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuView:Lmaster/flame/danmaku/controller/IDanmakuView;

    invoke-interface {v1, v0}, Lmaster/flame/danmaku/controller/IDanmakuView;->addDanmaku(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V

    .line 1006
    .end local v0    # "danmaku":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    :cond_2
    :goto_1
    return-object v0

    .line 998
    .restart local v0    # "danmaku":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    :cond_3
    iget v2, v0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->textColor:I

    if-gt v2, v1, :cond_4

    const/4 v1, -0x1

    :cond_4
    iput v1, v0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->textShadowColor:I

    .line 1000
    iget-object v1, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuUtils:Lcom/youku/player/danmaku/DanmakuUtils;

    invoke-interface {v1, p3}, Lcom/youku/player/danmaku/DanmakuUtils;->getDanmakuSendColor(I)I

    move-result v1

    iput v1, v0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->borderColor:I

    goto :goto_0

    .line 1006
    .end local v0    # "danmaku":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setDanmakuEffect(I)V
    .locals 2
    .param p1, "effect"    # I

    .prologue
    .line 1084
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1085
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    const v1, 0x3f99999a    # 1.2f

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->setScrollSpeedFactor(F)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 1091
    :cond_0
    :goto_0
    return-void

    .line 1087
    :cond_1
    if-nez p1, :cond_0

    .line 1088
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->setScrollSpeedFactor(F)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    goto :goto_0
.end method

.method public setDanmakuPosition(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 1059
    const/4 v0, 0x3

    .line 1060
    .local v0, "scale":I
    packed-switch p1, :pswitch_data_0

    .line 1070
    :goto_0
    sget-object v1, Lcom/youku/player/LogTag;->TAG_DANMAKU:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    iget-object v1, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuView:Lmaster/flame/danmaku/controller/IDanmakuView;

    if-eqz v1, :cond_0

    .line 1072
    iget-object v1, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youku/player/base/YoukuPlayerView;->mActivity:Landroid/support/v4/app/FragmentActivity;

    if-eqz v1, :cond_0

    .line 1073
    iget-object v2, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget-boolean v1, p0, Lcom/youku/player/base/YoukuPlayerView;->isFullscreen:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/youku/player/base/YoukuPlayerView;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    mul-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x3

    :goto_1
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1076
    sget-object v1, Lcom/youku/player/LogTag;->TAG_DANMAKU:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    iget-object v1, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuView:Lmaster/flame/danmaku/controller/IDanmakuView;

    check-cast v1, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;

    iget-object v2, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, v2}, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1081
    :cond_0
    return-void

    .line 1062
    :pswitch_0
    const/4 v0, 0x3

    .line 1063
    goto :goto_0

    .line 1065
    :pswitch_1
    const/4 v0, 0x2

    .line 1066
    goto :goto_0

    .line 1073
    :cond_1
    iget-object v1, p0, Lcom/youku/player/base/YoukuPlayerView;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    mul-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x3

    goto :goto_1

    .line 1060
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDanmakuVisibleWhenLive()V
    .locals 2

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuView:Lmaster/flame/danmaku/controller/IDanmakuView;

    if-eqz v0, :cond_0

    .line 1054
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuView:Lmaster/flame/danmaku/controller/IDanmakuView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lmaster/flame/danmaku/controller/IDanmakuView;->setVisibility(I)V

    .line 1056
    :cond_0
    return-void
.end method

.method public setDebugText(Ljava/lang/String;)V
    .locals 0
    .param p1, "debug"    # Ljava/lang/String;

    .prologue
    .line 244
    return-void
.end method

.method public setFirstSubtitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "subtitle"    # Ljava/lang/String;

    .prologue
    .line 780
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->firstSubtitle:Lcom/youku/player/subtitle/StrokeTextView;

    if-eqz v0, :cond_0

    .line 781
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->mActivity:Landroid/support/v4/app/FragmentActivity;

    new-instance v1, Lcom/youku/player/base/YoukuPlayerView$6;

    invoke-direct {v1, p0, p1}, Lcom/youku/player/base/YoukuPlayerView$6;-><init>(Lcom/youku/player/base/YoukuPlayerView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 791
    :cond_0
    return-void
.end method

.method public setFullscreenBack()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 373
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v1, "setFullscreenBack"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/youku/player/base/YoukuPlayerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 377
    iput-boolean v3, p0, Lcom/youku/player/base/YoukuPlayerView;->isFullscreen:Z

    .line 378
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->surfaceView:Lcom/youku/player/NewSurfaceView;

    iput-boolean v3, v0, Lcom/youku/player/NewSurfaceView;->isFullScreen:Z

    .line 379
    invoke-virtual {p0}, Lcom/youku/player/base/YoukuPlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/youku/android/player/R$color;->black:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/youku/player/base/YoukuPlayerView;->setBackgroundColor(I)V

    .line 380
    return-void
.end method

.method public setHorizontalLayout()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 406
    iput-boolean v3, p0, Lcom/youku/player/base/YoukuPlayerView;->isFullscreen:Z

    .line 407
    iget-object v2, p0, Lcom/youku/player/base/YoukuPlayerView;->surfaceView:Lcom/youku/player/NewSurfaceView;

    iput-boolean v3, v2, Lcom/youku/player/NewSurfaceView;->isFullScreen:Z

    .line 408
    iget-object v2, p0, Lcom/youku/player/base/YoukuPlayerView;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 409
    .local v0, "getOrient":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f29999a    # 0.6625f

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 410
    .local v1, "playWidth":I
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2}, Lcom/youku/player/base/YoukuPlayerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 412
    return-void
.end method

.method public setHorizontalLayout(I)V
    .locals 2
    .param p1, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 415
    iput-boolean v1, p0, Lcom/youku/player/base/YoukuPlayerView;->isFullscreen:Z

    .line 416
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->surfaceView:Lcom/youku/player/NewSurfaceView;

    iput-boolean v1, v0, Lcom/youku/player/NewSurfaceView;->isFullScreen:Z

    .line 417
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    mul-int/lit8 v1, p1, 0x10

    div-int/lit8 v1, v1, 0x9

    invoke-direct {v0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/youku/player/base/YoukuPlayerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 419
    iput p1, p0, Lcom/youku/player/base/YoukuPlayerView;->smallViewHeight:I

    .line 420
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->surfaceView:Lcom/youku/player/NewSurfaceView;

    invoke-virtual {v0, p1}, Lcom/youku/player/NewSurfaceView;->setOrientation(I)V

    .line 1050
    return-void
.end method

.method public setPlayerBlack()V
    .locals 2

    .prologue
    .line 636
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->surfaceBlack:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->mActivity:Landroid/support/v4/app/FragmentActivity;

    new-instance v1, Lcom/youku/player/base/YoukuPlayerView$4;

    invoke-direct {v1, p0}, Lcom/youku/player/base/YoukuPlayerView$4;-><init>(Lcom/youku/player/base/YoukuPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 645
    :cond_0
    return-void
.end method

.method public setPlayerBlackGone()V
    .locals 2

    .prologue
    .line 651
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->surfaceBlack:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->mActivity:Landroid/support/v4/app/FragmentActivity;

    new-instance v1, Lcom/youku/player/base/YoukuPlayerView$5;

    invoke-direct {v1, p0}, Lcom/youku/player/base/YoukuPlayerView$5;-><init>(Lcom/youku/player/base/YoukuPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 660
    :cond_0
    return-void
.end method

.method public setSecondSubtitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "subtitle"    # Ljava/lang/String;

    .prologue
    .line 806
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->secondSubtitle:Lcom/youku/player/subtitle/StrokeTextView;

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->mActivity:Landroid/support/v4/app/FragmentActivity;

    new-instance v1, Lcom/youku/player/base/YoukuPlayerView$8;

    invoke-direct {v1, p0, p1}, Lcom/youku/player/base/YoukuPlayerView$8;-><init>(Lcom/youku/player/base/YoukuPlayerView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 817
    :cond_0
    return-void
.end method

.method public setSingleSubtitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "subtitle"    # Ljava/lang/String;

    .prologue
    .line 832
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->singleSubtitle:Lcom/youku/player/subtitle/StrokeTextView;

    if-eqz v0, :cond_0

    .line 833
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->mActivity:Landroid/support/v4/app/FragmentActivity;

    new-instance v1, Lcom/youku/player/base/YoukuPlayerView$10;

    invoke-direct {v1, p0, p1}, Lcom/youku/player/base/YoukuPlayerView$10;-><init>(Lcom/youku/player/base/YoukuPlayerView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 843
    :cond_0
    return-void
.end method

.method public setTudouWaterMarkFrameType(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    const/4 v1, 0x0

    .line 692
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->tudouWaterMark:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 716
    :goto_0
    return-void

    .line 695
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 697
    :pswitch_0
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->tudouWaterMark:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 698
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->tudouWaterMark:Landroid/widget/ImageView;

    sget v1, Lcom/youku/android/player/R$drawable;->play_mark_01:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 701
    :pswitch_1
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->tudouWaterMark:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 702
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->tudouWaterMark:Landroid/widget/ImageView;

    sget v1, Lcom/youku/android/player/R$drawable;->play_mark_12:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 705
    :pswitch_2
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->tudouWaterMark:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 706
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->tudouWaterMark:Landroid/widget/ImageView;

    sget v1, Lcom/youku/android/player/R$drawable;->yp_tudou_water_mark_anim:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 708
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->tudouWaterMark:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->waterMarkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 710
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->waterMarkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 711
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->waterMarkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    .line 695
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setTudouWaterMarkInvisible()V
    .locals 2

    .prologue
    .line 686
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->tudouWaterMark:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->tudouWaterMark:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 689
    :cond_0
    return-void
.end method

.method public setVerticalLayout()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 427
    sget-object v2, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v3, "setVerticalLayout"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    invoke-virtual {p0}, Lcom/youku/player/base/YoukuPlayerView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 430
    .local v1, "width":I
    mul-int/lit8 v2, v1, 0x9

    int-to-float v2, v2

    const/high16 v3, 0x41800000    # 16.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 431
    .local v0, "height":I
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2}, Lcom/youku/player/base/YoukuPlayerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 433
    iput-boolean v4, p0, Lcom/youku/player/base/YoukuPlayerView;->isFullscreen:Z

    .line 434
    iget-object v2, p0, Lcom/youku/player/base/YoukuPlayerView;->surfaceView:Lcom/youku/player/NewSurfaceView;

    iput-boolean v4, v2, Lcom/youku/player/NewSurfaceView;->isFullScreen:Z

    .line 435
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 574
    return-void
.end method

.method public setWaterMarkVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 680
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->waterMark:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 681
    iget-object v1, p0, Lcom/youku/player/base/YoukuPlayerView;->waterMark:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 683
    :cond_0
    return-void

    .line 681
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setupWaterMark()V
    .locals 8

    .prologue
    .line 1125
    iget-object v5, p0, Lcom/youku/player/base/YoukuPlayerView;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v5, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v5}, Lcom/youku/player/module/VideoUrlInfo;->getCurrentQuality()I

    move-result v0

    .line 1127
    .local v0, "currentQuality":I
    const/4 v4, 0x0

    .line 1128
    .local v4, "quality":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1129
    .local v2, "isHardWaterMark":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1130
    .local v3, "isLocalHardWaterMark":Ljava/lang/String;
    sget-object v5, Lcom/youku/player/LogTag;->TAG_WATERMARK:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u5f53\u524d\u54c1\u8d28\u662f"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    sget-object v5, Lcom/youku/player/LogTag;->TAG_WATERMARK:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u5f53\u524d\u663e\u793a\u7c7b\u578b"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/youku/player/base/YoukuPlayerView;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v7, v7, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v7, v7, Lcom/youku/player/module/VideoUrlInfo;->waterMarkType:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v5, 0x5

    if-ge v1, v5, :cond_2

    .line 1134
    const/4 v5, 0x3

    if-ne v1, v5, :cond_0

    .line 1133
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1136
    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 1151
    :goto_2
    :pswitch_0
    iget-object v5, p0, Lcom/youku/player/base/YoukuPlayerView;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v5, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v5, v5, Lcom/youku/player/module/VideoUrlInfo;->isWaterMark:[I

    aget v5, v5, v1

    if-eqz v5, :cond_1

    .line 1152
    const-string v2, ",\u6709\u786c\u6c34\u5370"

    .line 1156
    :goto_3
    sget-object v5, Lcom/youku/player/LogTag;->TAG_WATERMARK:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1138
    :pswitch_1
    const-string/jumbo v4, "\u8d85\u6e05\u89c6\u9891"

    .line 1139
    goto :goto_2

    .line 1141
    :pswitch_2
    const-string/jumbo v4, "\u9ad8\u6e05\u89c6\u9891"

    .line 1142
    goto :goto_2

    .line 1144
    :pswitch_3
    const-string/jumbo v4, "\u6807\u6e05\u89c6\u9891"

    .line 1145
    goto :goto_2

    .line 1147
    :pswitch_4
    const-string/jumbo v4, "\u5176\u4ed6\u89c6\u9891"

    goto :goto_2

    .line 1154
    :cond_1
    const-string v2, ",\u6ca1\u6709\u786c\u6c34\u5370"

    goto :goto_3

    .line 1158
    :cond_2
    iget-object v5, p0, Lcom/youku/player/base/YoukuPlayerView;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v5, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-boolean v5, v5, Lcom/youku/player/module/VideoUrlInfo;->isLocalWaterMark:Z

    if-eqz v5, :cond_4

    .line 1159
    const-string v3, ",\u6709\u786c\u6c34\u5370"

    .line 1163
    :goto_4
    sget-object v5, Lcom/youku/player/LogTag;->TAG_WATERMARK:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u7f13\u5b58\u89c6\u9891"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    iget-object v5, p0, Lcom/youku/player/base/YoukuPlayerView;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v5, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-boolean v5, v5, Lcom/youku/player/module/VideoUrlInfo;->isHLS:Z

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/youku/player/base/YoukuPlayerView;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v5, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-boolean v5, v5, Lcom/youku/player/module/VideoUrlInfo;->isExternalVideo:Z

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/youku/player/base/YoukuPlayerView;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v5, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-boolean v5, v5, Lcom/youku/player/module/VideoUrlInfo;->isLocalWaterMark:Z

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/youku/player/base/YoukuPlayerView;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v5, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v5, v5, Lcom/youku/player/module/VideoUrlInfo;->isWaterMark:[I

    aget v5, v5, v0

    if-eqz v5, :cond_5

    .line 1168
    :cond_3
    iget-object v5, p0, Lcom/youku/player/base/YoukuPlayerView;->mActivity:Landroid/support/v4/app/FragmentActivity;

    new-instance v6, Lcom/youku/player/base/YoukuPlayerView$14;

    invoke-direct {v6, p0}, Lcom/youku/player/base/YoukuPlayerView$14;-><init>(Lcom/youku/player/base/YoukuPlayerView;)V

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1184
    :goto_5
    return-void

    .line 1161
    :cond_4
    const-string v3, ",\u6ca1\u6709\u786c\u6c34\u5370"

    goto :goto_4

    .line 1175
    :cond_5
    iget-object v5, p0, Lcom/youku/player/base/YoukuPlayerView;->mActivity:Landroid/support/v4/app/FragmentActivity;

    new-instance v6, Lcom/youku/player/base/YoukuPlayerView$15;

    invoke-direct {v6, p0, v0}, Lcom/youku/player/base/YoukuPlayerView$15;-><init>(Lcom/youku/player/base/YoukuPlayerView;I)V

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_5

    .line 1136
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public showDanmaku()V
    .locals 1

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuView:Lmaster/flame/danmaku/controller/IDanmakuView;

    if-eqz v0, :cond_0

    .line 1032
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuView:Lmaster/flame/danmaku/controller/IDanmakuView;

    invoke-interface {v0}, Lmaster/flame/danmaku/controller/IDanmakuView;->show()V

    .line 1034
    :cond_0
    return-void
.end method

.method public zoomDanmakuSmallView()V
    .locals 2

    .prologue
    .line 761
    iget-boolean v0, p0, Lcom/youku/player/base/YoukuPlayerView;->isTudouPadDanmaku:Z

    if-nez v0, :cond_1

    .line 771
    :cond_0
    :goto_0
    return-void

    .line 764
    :cond_1
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuView:Lmaster/flame/danmaku/controller/IDanmakuView;

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v0, :cond_0

    .line 766
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/youku/player/base/YoukuPlayerView;->smallViewHeight:I

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x5

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 767
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuView:Lmaster/flame/danmaku/controller/IDanmakuView;

    check-cast v0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;

    iget-object v1, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public zoomDanmakuView()V
    .locals 2

    .prologue
    .line 750
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuView:Lmaster/flame/danmaku/controller/IDanmakuView;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/config/MediaPlayerConfiguration;->hideDanmaku()Z

    move-result v0

    if-nez v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget-object v1, p0, Lcom/youku/player/base/YoukuPlayerView;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x5

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 754
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuView:Lmaster/flame/danmaku/controller/IDanmakuView;

    check-cast v0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;

    iget-object v1, p0, Lcom/youku/player/base/YoukuPlayerView;->danmakuLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 758
    :cond_0
    return-void
.end method

.method public zoomTudouWaterMark()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 730
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->tudouWaterMark:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 731
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->tudouLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v0, :cond_0

    .line 732
    iget-boolean v0, p0, Lcom/youku/player/base/YoukuPlayerView;->isFullscreen:Z

    if-eqz v0, :cond_1

    .line 733
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->tudouLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/youku/player/base/YoukuPlayerView;->fullwaterMarkMarginTop:I

    iget v2, p0, Lcom/youku/player/base/YoukuPlayerView;->fullwaterMarkMarginRight:I

    invoke-virtual {v0, v3, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 736
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->tudouLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/youku/player/base/YoukuPlayerView;->tudouWaterMarkWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 737
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->tudouLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/youku/player/base/YoukuPlayerView;->tudouWaterMarkHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 744
    :goto_0
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->tudouWaterMark:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/youku/player/base/YoukuPlayerView;->tudouLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 747
    :cond_0
    return-void

    .line 739
    :cond_1
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->tudouLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/youku/player/base/YoukuPlayerView;->waterMarkMarginTop:I

    iget v2, p0, Lcom/youku/player/base/YoukuPlayerView;->waterMarkMarginRight:I

    invoke-virtual {v0, v3, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 741
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->tudouLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/youku/player/base/YoukuPlayerView;->tudouWaterMarkWidth:I

    mul-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0xa

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 742
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->tudouLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/youku/player/base/YoukuPlayerView;->tudouWaterMarkHeight:I

    mul-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0xa

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method public zoomWaterMark(II)V
    .locals 2
    .param p1, "scaleParamA"    # I
    .param p2, "scaleParmB"    # I

    .prologue
    .line 719
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->waterMark:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->layoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->layoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/youku/player/base/YoukuPlayerView;->waterMarkWidth:I

    mul-int/2addr v1, p1

    div-int/2addr v1, p2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 722
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->layoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/youku/player/base/YoukuPlayerView;->waterMarkHeight:I

    mul-int/2addr v1, p1

    div-int/2addr v1, p2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 724
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView;->waterMark:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/youku/player/base/YoukuPlayerView;->layoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 727
    :cond_0
    return-void
.end method
