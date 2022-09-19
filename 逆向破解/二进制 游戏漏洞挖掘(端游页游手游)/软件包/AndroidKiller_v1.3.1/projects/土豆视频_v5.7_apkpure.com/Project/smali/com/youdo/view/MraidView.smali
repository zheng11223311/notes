.class public Lcom/youdo/view/MraidView;
.super Lcom/youdo/view/UnZoomableOrScrollableWebView;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Lorg/openad/interfaces/IDisposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youdo/view/MraidView$16;,
        Lcom/youdo/view/MraidView$NewLocationReciever;,
        Lcom/youdo/view/MraidView$WebPageLoadingTimeOut;,
        Lcom/youdo/view/MraidView$MraidViewListener;,
        Lcom/youdo/view/MraidView$ACTION;
    }
.end annotation


# static fields
.field public static final ACTION_KEY:Ljava/lang/String; = "action"

.field private static final AD_PATH:Ljava/lang/String; = "AD_PATH"

.field protected static final BACKGROUND_ID:I = 0x65

.field private static final CLASSTAG:Ljava/lang/String; = "MraidView"

.field private static final CURRENT_FILE:Ljava/lang/String; = "_mraid_current"

.field public static final DIMENSIONS:Ljava/lang/String; = "expand_dimensions"

.field private static final ERROR_ACTION:Ljava/lang/String; = "action"

.field private static final ERROR_MESSAGE:Ljava/lang/String; = "message"

.field private static final EXPAND_PROPERTIES:Ljava/lang/String; = "expand_properties"

.field public static final EXPAND_URL:Ljava/lang/String; = "expand_url"

.field private static final MESSAGE_CLOSE:I = 0x3e9

.field private static final MESSAGE_EXPAND:I = 0x3ec

.field private static final MESSAGE_HIDE:I = 0x3ea

.field private static final MESSAGE_OPEN:I = 0x3ee

.field private static final MESSAGE_PLAY_AUDIO:I = 0x3f0

.field private static final MESSAGE_PLAY_VIDEO:I = 0x3ef

.field private static final MESSAGE_RAISE_ERROR:I = 0x3f1

.field private static final MESSAGE_RESIZE:I = 0x3e8

.field private static final MESSAGE_SENDER:Ljava/lang/String; = "message_sender"

.field private static final MESSAGE_SEND_EXPAND_CLOSE:I = 0x3ed

.field private static final MESSAGE_SHOW:I = 0x3eb

.field public static final MRAID_ID:I = 0x66

.field protected static final PLACEHOLDER_ID:I = 0x64

.field public static final PLAYER_PROPERTIES:Ljava/lang/String; = "player_properties"

.field private static final RESIZE_ALLOW_OFF_SCREEN:Ljava/lang/String; = "resize_allow_off_screen"

.field private static final RESIZE_CUSTOM_CLOSE_POSITION:Ljava/lang/String; = "resize_custom_close_position"

.field private static final RESIZE_HEIGHT:Ljava/lang/String; = "resize_height"

.field private static final RESIZE_OFFSET_X:Ljava/lang/String; = "resize_offset_x"

.field private static final RESIZE_OFFSET_Y:Ljava/lang/String; = "resize_offset_y"

.field private static final RESIZE_WIDTH:Ljava/lang/String; = "resize_width"

.field private static final TAG:Ljava/lang/String; = "View"

.field private static final WEBVIEW_CACHE_SIZE:J = 0xa00000L

.field private static attrs:[I

.field private static mBridgeScriptPath:Ljava/lang/String;

.field private static mScriptPath:Ljava/lang/String;

.field private static player:Lcom/youdo/controller/util/MraidPlayer;


# instance fields
.field private bGotLayoutParams:Z

.field private bKeyboardOut:Z

.field private bPageFinished:Z

.field private customVideoView:Landroid/widget/VideoView;

.field private customView:Landroid/view/View;

.field public defaultHeight:F

.field public defaultWidth:F

.field public embeddedBrowserOpened:Z

.field private is:Ljava/io/InputStream;

.field private isLoadingError:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isLoadingTimeout:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isVideoDisplayed:Ljava/lang/Boolean;

.field private mAdApplicationContext:Lcom/youdo/ad/interfaces/IAdApplicationContext;

.field private mAdAssetTimer:Lorg/openad/common/util/XYDTimer;

.field private mContentViewHeight:I

.field private mDefaultHeight:I

.field private mDefaultPositionX:I

.field private mDefaultPositionY:I

.field private mDefaultWidth:I

.field private mDensity:F

.field private mHandler:Landroid/os/Handler;

.field private mIndex:I

.field private mInitLayoutHeight:I

.field private mInitLayoutWidth:I

.field private mListener:Lcom/youdo/view/MraidView$MraidViewListener;

.field private mLocalFilePath:Ljava/lang/String;

.field private mTimeOut:Lcom/youdo/view/MraidView$WebPageLoadingTimeOut;

.field private mUtilityController:Lcom/youdo/controller/MraidUtilityController;

.field private mViewState:Lorg/openad/constants/IOpenAdContants$ViewState;

.field mWebChromeClient:Landroid/webkit/WebChromeClient;

.field mWebViewClient:Landroid/webkit/WebViewClient;

.field private mainLoopHandler:Landroid/os/Handler;

.field private mapAPIKey:Ljava/lang/String;

.field private placeholderView:Landroid/widget/FrameLayout;

.field private final registeredProtocols:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final streamHandler:Ljava/net/URLStreamHandler;

.field private u:Ljava/net/URL;

.field private useFullScreenCustomVideo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/youdo/view/MraidView;->attrs:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x101011f
        0x1010120
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/youdo/ad/interfaces/IAdApplicationContext;)V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/youdo/view/UnZoomableOrScrollableWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/youdo/view/MraidView;->isLoadingTimeout:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/youdo/view/MraidView;->isLoadingError:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/youdo/view/MraidView;->isVideoDisplayed:Ljava/lang/Boolean;

    sget-object v0, Lorg/openad/constants/IOpenAdContants$ViewState;->DEFAULT:Lorg/openad/constants/IOpenAdContants$ViewState;

    iput-object v0, p0, Lcom/youdo/view/MraidView;->mViewState:Lorg/openad/constants/IOpenAdContants$ViewState;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/youdo/view/MraidView;->registeredProtocols:Ljava/util/HashSet;

    iput v2, p0, Lcom/youdo/view/MraidView;->mDefaultPositionX:I

    iput v2, p0, Lcom/youdo/view/MraidView;->mDefaultPositionY:I

    iput-object v1, p0, Lcom/youdo/view/MraidView;->mainLoopHandler:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/youdo/view/MraidView;->useFullScreenCustomVideo:Z

    iput-object v1, p0, Lcom/youdo/view/MraidView;->customVideoView:Landroid/widget/VideoView;

    iput-object v1, p0, Lcom/youdo/view/MraidView;->customView:Landroid/view/View;

    iput-object v1, p0, Lcom/youdo/view/MraidView;->placeholderView:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/youdo/view/MraidView$1;

    invoke-direct {v0, p0}, Lcom/youdo/view/MraidView$1;-><init>(Lcom/youdo/view/MraidView;)V

    iput-object v0, p0, Lcom/youdo/view/MraidView;->mHandler:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/youdo/view/MraidView;->embeddedBrowserOpened:Z

    new-instance v0, Lcom/youdo/view/MraidView$4;

    invoke-direct {v0, p0}, Lcom/youdo/view/MraidView$4;-><init>(Lcom/youdo/view/MraidView;)V

    iput-object v0, p0, Lcom/youdo/view/MraidView;->mWebViewClient:Landroid/webkit/WebViewClient;

    new-instance v0, Lcom/youdo/view/MraidView$5;

    invoke-direct {v0, p0}, Lcom/youdo/view/MraidView$5;-><init>(Lcom/youdo/view/MraidView;)V

    iput-object v0, p0, Lcom/youdo/view/MraidView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    iput v3, p0, Lcom/youdo/view/MraidView;->defaultWidth:F

    iput v3, p0, Lcom/youdo/view/MraidView;->defaultHeight:F

    new-instance v0, Lcom/youdo/view/MraidView$6;

    invoke-direct {v0, p0}, Lcom/youdo/view/MraidView$6;-><init>(Lcom/youdo/view/MraidView;)V

    iput-object v0, p0, Lcom/youdo/view/MraidView;->streamHandler:Ljava/net/URLStreamHandler;

    invoke-direct {p0}, Lcom/youdo/view/MraidView;->initialize()V

    invoke-virtual {p0}, Lcom/youdo/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/youdo/view/MraidView;->attrs:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    if-lez v1, :cond_0

    if-lez v2, :cond_0

    iget-object v3, p0, Lcom/youdo/view/MraidView;->mUtilityController:Lcom/youdo/controller/MraidUtilityController;

    invoke-virtual {v3, v1, v2}, Lcom/youdo/controller/MraidUtilityController;->setMaxSize(II)V

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/youdo/ad/interfaces/IAdApplicationContext;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/youdo/view/UnZoomableOrScrollableWebView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/youdo/view/MraidView;->isLoadingTimeout:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/youdo/view/MraidView;->isLoadingError:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/youdo/view/MraidView;->isVideoDisplayed:Ljava/lang/Boolean;

    sget-object v0, Lorg/openad/constants/IOpenAdContants$ViewState;->DEFAULT:Lorg/openad/constants/IOpenAdContants$ViewState;

    iput-object v0, p0, Lcom/youdo/view/MraidView;->mViewState:Lorg/openad/constants/IOpenAdContants$ViewState;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/youdo/view/MraidView;->registeredProtocols:Ljava/util/HashSet;

    iput v1, p0, Lcom/youdo/view/MraidView;->mDefaultPositionX:I

    iput v1, p0, Lcom/youdo/view/MraidView;->mDefaultPositionY:I

    iput-object v2, p0, Lcom/youdo/view/MraidView;->mainLoopHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/youdo/view/MraidView;->useFullScreenCustomVideo:Z

    iput-object v2, p0, Lcom/youdo/view/MraidView;->customVideoView:Landroid/widget/VideoView;

    iput-object v2, p0, Lcom/youdo/view/MraidView;->customView:Landroid/view/View;

    iput-object v2, p0, Lcom/youdo/view/MraidView;->placeholderView:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/youdo/view/MraidView$1;

    invoke-direct {v0, p0}, Lcom/youdo/view/MraidView$1;-><init>(Lcom/youdo/view/MraidView;)V

    iput-object v0, p0, Lcom/youdo/view/MraidView;->mHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/youdo/view/MraidView;->embeddedBrowserOpened:Z

    new-instance v0, Lcom/youdo/view/MraidView$4;

    invoke-direct {v0, p0}, Lcom/youdo/view/MraidView$4;-><init>(Lcom/youdo/view/MraidView;)V

    iput-object v0, p0, Lcom/youdo/view/MraidView;->mWebViewClient:Landroid/webkit/WebViewClient;

    new-instance v0, Lcom/youdo/view/MraidView$5;

    invoke-direct {v0, p0}, Lcom/youdo/view/MraidView$5;-><init>(Lcom/youdo/view/MraidView;)V

    iput-object v0, p0, Lcom/youdo/view/MraidView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    iput v3, p0, Lcom/youdo/view/MraidView;->defaultWidth:F

    iput v3, p0, Lcom/youdo/view/MraidView;->defaultHeight:F

    new-instance v0, Lcom/youdo/view/MraidView$6;

    invoke-direct {v0, p0}, Lcom/youdo/view/MraidView$6;-><init>(Lcom/youdo/view/MraidView;)V

    iput-object v0, p0, Lcom/youdo/view/MraidView;->streamHandler:Ljava/net/URLStreamHandler;

    iput-object p2, p0, Lcom/youdo/view/MraidView;->mAdApplicationContext:Lcom/youdo/ad/interfaces/IAdApplicationContext;

    invoke-direct {p0}, Lcom/youdo/view/MraidView;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/youdo/view/MraidView$MraidViewListener;Lcom/youdo/ad/interfaces/IAdApplicationContext;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/youdo/view/UnZoomableOrScrollableWebView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/youdo/view/MraidView;->isLoadingTimeout:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/youdo/view/MraidView;->isLoadingError:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/youdo/view/MraidView;->isVideoDisplayed:Ljava/lang/Boolean;

    sget-object v0, Lorg/openad/constants/IOpenAdContants$ViewState;->DEFAULT:Lorg/openad/constants/IOpenAdContants$ViewState;

    iput-object v0, p0, Lcom/youdo/view/MraidView;->mViewState:Lorg/openad/constants/IOpenAdContants$ViewState;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/youdo/view/MraidView;->registeredProtocols:Ljava/util/HashSet;

    iput v1, p0, Lcom/youdo/view/MraidView;->mDefaultPositionX:I

    iput v1, p0, Lcom/youdo/view/MraidView;->mDefaultPositionY:I

    iput-object v2, p0, Lcom/youdo/view/MraidView;->mainLoopHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/youdo/view/MraidView;->useFullScreenCustomVideo:Z

    iput-object v2, p0, Lcom/youdo/view/MraidView;->customVideoView:Landroid/widget/VideoView;

    iput-object v2, p0, Lcom/youdo/view/MraidView;->customView:Landroid/view/View;

    iput-object v2, p0, Lcom/youdo/view/MraidView;->placeholderView:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/youdo/view/MraidView$1;

    invoke-direct {v0, p0}, Lcom/youdo/view/MraidView$1;-><init>(Lcom/youdo/view/MraidView;)V

    iput-object v0, p0, Lcom/youdo/view/MraidView;->mHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/youdo/view/MraidView;->embeddedBrowserOpened:Z

    new-instance v0, Lcom/youdo/view/MraidView$4;

    invoke-direct {v0, p0}, Lcom/youdo/view/MraidView$4;-><init>(Lcom/youdo/view/MraidView;)V

    iput-object v0, p0, Lcom/youdo/view/MraidView;->mWebViewClient:Landroid/webkit/WebViewClient;

    new-instance v0, Lcom/youdo/view/MraidView$5;

    invoke-direct {v0, p0}, Lcom/youdo/view/MraidView$5;-><init>(Lcom/youdo/view/MraidView;)V

    iput-object v0, p0, Lcom/youdo/view/MraidView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    iput v3, p0, Lcom/youdo/view/MraidView;->defaultWidth:F

    iput v3, p0, Lcom/youdo/view/MraidView;->defaultHeight:F

    new-instance v0, Lcom/youdo/view/MraidView$6;

    invoke-direct {v0, p0}, Lcom/youdo/view/MraidView$6;-><init>(Lcom/youdo/view/MraidView;)V

    iput-object v0, p0, Lcom/youdo/view/MraidView;->streamHandler:Ljava/net/URLStreamHandler;

    invoke-virtual {p0, p2}, Lcom/youdo/view/MraidView;->setListener(Lcom/youdo/view/MraidView$MraidViewListener;)V

    iput-object p3, p0, Lcom/youdo/view/MraidView;->mAdApplicationContext:Lcom/youdo/ad/interfaces/IAdApplicationContext;

    invoke-direct {p0}, Lcom/youdo/view/MraidView;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/youdo/ad/interfaces/IAdApplicationContext;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/youdo/view/UnZoomableOrScrollableWebView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/youdo/view/MraidView;->isLoadingTimeout:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/youdo/view/MraidView;->isLoadingError:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/youdo/view/MraidView;->isVideoDisplayed:Ljava/lang/Boolean;

    sget-object v0, Lorg/openad/constants/IOpenAdContants$ViewState;->DEFAULT:Lorg/openad/constants/IOpenAdContants$ViewState;

    iput-object v0, p0, Lcom/youdo/view/MraidView;->mViewState:Lorg/openad/constants/IOpenAdContants$ViewState;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/youdo/view/MraidView;->registeredProtocols:Ljava/util/HashSet;

    iput v1, p0, Lcom/youdo/view/MraidView;->mDefaultPositionX:I

    iput v1, p0, Lcom/youdo/view/MraidView;->mDefaultPositionY:I

    iput-object v2, p0, Lcom/youdo/view/MraidView;->mainLoopHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/youdo/view/MraidView;->useFullScreenCustomVideo:Z

    iput-object v2, p0, Lcom/youdo/view/MraidView;->customVideoView:Landroid/widget/VideoView;

    iput-object v2, p0, Lcom/youdo/view/MraidView;->customView:Landroid/view/View;

    iput-object v2, p0, Lcom/youdo/view/MraidView;->placeholderView:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/youdo/view/MraidView$1;

    invoke-direct {v0, p0}, Lcom/youdo/view/MraidView$1;-><init>(Lcom/youdo/view/MraidView;)V

    iput-object v0, p0, Lcom/youdo/view/MraidView;->mHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/youdo/view/MraidView;->embeddedBrowserOpened:Z

    new-instance v0, Lcom/youdo/view/MraidView$4;

    invoke-direct {v0, p0}, Lcom/youdo/view/MraidView$4;-><init>(Lcom/youdo/view/MraidView;)V

    iput-object v0, p0, Lcom/youdo/view/MraidView;->mWebViewClient:Landroid/webkit/WebViewClient;

    new-instance v0, Lcom/youdo/view/MraidView$5;

    invoke-direct {v0, p0}, Lcom/youdo/view/MraidView$5;-><init>(Lcom/youdo/view/MraidView;)V

    iput-object v0, p0, Lcom/youdo/view/MraidView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    iput v3, p0, Lcom/youdo/view/MraidView;->defaultWidth:F

    iput v3, p0, Lcom/youdo/view/MraidView;->defaultHeight:F

    new-instance v0, Lcom/youdo/view/MraidView$6;

    invoke-direct {v0, p0}, Lcom/youdo/view/MraidView$6;-><init>(Lcom/youdo/view/MraidView;)V

    iput-object v0, p0, Lcom/youdo/view/MraidView;->streamHandler:Ljava/net/URLStreamHandler;

    iput-object p2, p0, Lcom/youdo/view/MraidView;->mapAPIKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/youdo/view/MraidView;->mAdApplicationContext:Lcom/youdo/ad/interfaces/IAdApplicationContext;

    invoke-direct {p0}, Lcom/youdo/view/MraidView;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/youdo/view/MraidView$MraidViewListener;Lcom/youdo/ad/interfaces/IAdApplicationContext;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/youdo/view/UnZoomableOrScrollableWebView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/youdo/view/MraidView;->isLoadingTimeout:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/youdo/view/MraidView;->isLoadingError:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/youdo/view/MraidView;->isVideoDisplayed:Ljava/lang/Boolean;

    sget-object v0, Lorg/openad/constants/IOpenAdContants$ViewState;->DEFAULT:Lorg/openad/constants/IOpenAdContants$ViewState;

    iput-object v0, p0, Lcom/youdo/view/MraidView;->mViewState:Lorg/openad/constants/IOpenAdContants$ViewState;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/youdo/view/MraidView;->registeredProtocols:Ljava/util/HashSet;

    iput v1, p0, Lcom/youdo/view/MraidView;->mDefaultPositionX:I

    iput v1, p0, Lcom/youdo/view/MraidView;->mDefaultPositionY:I

    iput-object v2, p0, Lcom/youdo/view/MraidView;->mainLoopHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/youdo/view/MraidView;->useFullScreenCustomVideo:Z

    iput-object v2, p0, Lcom/youdo/view/MraidView;->customVideoView:Landroid/widget/VideoView;

    iput-object v2, p0, Lcom/youdo/view/MraidView;->customView:Landroid/view/View;

    iput-object v2, p0, Lcom/youdo/view/MraidView;->placeholderView:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/youdo/view/MraidView$1;

    invoke-direct {v0, p0}, Lcom/youdo/view/MraidView$1;-><init>(Lcom/youdo/view/MraidView;)V

    iput-object v0, p0, Lcom/youdo/view/MraidView;->mHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/youdo/view/MraidView;->embeddedBrowserOpened:Z

    new-instance v0, Lcom/youdo/view/MraidView$4;

    invoke-direct {v0, p0}, Lcom/youdo/view/MraidView$4;-><init>(Lcom/youdo/view/MraidView;)V

    iput-object v0, p0, Lcom/youdo/view/MraidView;->mWebViewClient:Landroid/webkit/WebViewClient;

    new-instance v0, Lcom/youdo/view/MraidView$5;

    invoke-direct {v0, p0}, Lcom/youdo/view/MraidView$5;-><init>(Lcom/youdo/view/MraidView;)V

    iput-object v0, p0, Lcom/youdo/view/MraidView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    iput v3, p0, Lcom/youdo/view/MraidView;->defaultWidth:F

    iput v3, p0, Lcom/youdo/view/MraidView;->defaultHeight:F

    new-instance v0, Lcom/youdo/view/MraidView$6;

    invoke-direct {v0, p0}, Lcom/youdo/view/MraidView$6;-><init>(Lcom/youdo/view/MraidView;)V

    iput-object v0, p0, Lcom/youdo/view/MraidView;->streamHandler:Ljava/net/URLStreamHandler;

    iput-object p2, p0, Lcom/youdo/view/MraidView;->mapAPIKey:Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/youdo/view/MraidView;->setListener(Lcom/youdo/view/MraidView$MraidViewListener;)V

    iput-object p4, p0, Lcom/youdo/view/MraidView;->mAdApplicationContext:Lcom/youdo/ad/interfaces/IAdApplicationContext;

    invoke-direct {p0}, Lcom/youdo/view/MraidView;->initialize()V

    return-void
.end method

.method static synthetic access$000(Lcom/youdo/view/MraidView;)Lcom/youdo/view/MraidView$MraidViewListener;
    .locals 1

    iget-object v0, p0, Lcom/youdo/view/MraidView;->mListener:Lcom/youdo/view/MraidView$MraidViewListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youdo/view/MraidView;)Lorg/openad/constants/IOpenAdContants$ViewState;
    .locals 1

    iget-object v0, p0, Lcom/youdo/view/MraidView;->mViewState:Lorg/openad/constants/IOpenAdContants$ViewState;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/youdo/view/MraidView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/youdo/view/MraidView;->bPageFinished:Z

    return p1
.end method

.method static synthetic access$102(Lcom/youdo/view/MraidView;Lorg/openad/constants/IOpenAdContants$ViewState;)Lorg/openad/constants/IOpenAdContants$ViewState;
    .locals 0

    iput-object p1, p0, Lcom/youdo/view/MraidView;->mViewState:Lorg/openad/constants/IOpenAdContants$ViewState;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/youdo/view/MraidView;I)I
    .locals 0

    iput p1, p0, Lcom/youdo/view/MraidView;->mDefaultHeight:I

    return p1
.end method

.method static synthetic access$1202(Lcom/youdo/view/MraidView;I)I
    .locals 0

    iput p1, p0, Lcom/youdo/view/MraidView;->mDefaultWidth:I

    return p1
.end method

.method static synthetic access$1300(Lcom/youdo/view/MraidView;Landroid/net/Uri;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/youdo/view/MraidView;->isRegisteredProtocol(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/youdo/view/MraidView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/youdo/view/MraidView;->doLoadUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/youdo/view/MraidView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/youdo/view/MraidView;->doInjectJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/youdo/view/MraidView;Ljava/lang/String;ZZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/youdo/view/MraidView;->doOpen(Ljava/lang/String;ZZZ)V

    return-void
.end method

.method static synthetic access$1700(Lcom/youdo/view/MraidView;)V
    .locals 0

    invoke-direct {p0}, Lcom/youdo/view/MraidView;->failAdAssetLoading()V

    return-void
.end method

.method static synthetic access$200(Lcom/youdo/view/MraidView;)F
    .locals 1

    iget v0, p0, Lcom/youdo/view/MraidView;->mDensity:F

    return v0
.end method

.method static synthetic access$300(Lcom/youdo/view/MraidView;)V
    .locals 0

    invoke-direct {p0}, Lcom/youdo/view/MraidView;->closeResized()V

    return-void
.end method

.method static synthetic access$400(Lcom/youdo/view/MraidView;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/youdo/view/MraidView;->isVideoDisplayed:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$402(Lcom/youdo/view/MraidView;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/youdo/view/MraidView;->isVideoDisplayed:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$500(Lcom/youdo/view/MraidView;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/youdo/view/MraidView;->doExpand(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$600(Lcom/youdo/view/MraidView;)V
    .locals 0

    invoke-direct {p0}, Lcom/youdo/view/MraidView;->stopAdAssetTimer()V

    return-void
.end method

.method static synthetic access$700(Lcom/youdo/view/MraidView;)Lcom/youdo/controller/MraidUtilityController;
    .locals 1

    iget-object v0, p0, Lcom/youdo/view/MraidView;->mUtilityController:Lcom/youdo/controller/MraidUtilityController;

    return-object v0
.end method

.method static synthetic access$800(Lcom/youdo/view/MraidView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/youdo/view/MraidView;->isLoadingTimeout:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$900(Lcom/youdo/view/MraidView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/youdo/view/MraidView;->isLoadingError:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private changeContentArea(Lcom/youdo/controller/MraidController$Dimensions;)Landroid/widget/FrameLayout;
    .locals 9

    const/4 v8, -0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/youdo/view/MraidView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/youdo/view/MraidView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p1, Lcom/youdo/controller/MraidController$Dimensions;->width:I

    iget v4, p1, Lcom/youdo/controller/MraidController$Dimensions;->height:I

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-static {p0}, Lorg/openad/common/util/ViewUtils;->getChildIndex(Landroid/view/View;)I

    move-result v3

    iput v3, p0, Lcom/youdo/view/MraidView;->mIndex:I

    new-instance v3, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/youdo/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setId(I)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Lcom/youdo/view/MraidView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/youdo/view/MraidView;->getHeight()I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget v5, p0, Lcom/youdo/view/MraidView;->mIndex:I

    invoke-virtual {v1, v3, v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/youdo/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/youdo/view/MraidView$13;

    invoke-direct {v3, p0}, Lcom/youdo/view/MraidView$13;-><init>(Lcom/youdo/view/MraidView;)V

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x65

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setId(I)V

    iget v4, p1, Lcom/youdo/controller/MraidController$Dimensions;->x:I

    iget v5, p1, Lcom/youdo/controller/MraidController$Dimensions;->y:I

    invoke-virtual {v1, v4, v5, v7, v7}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    invoke-virtual {v1, p0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method private declared-synchronized closeResized()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/youdo/view/MraidView;->mListener:Lcom/youdo/view/MraidView$MraidViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/view/MraidView;->mListener:Lcom/youdo/view/MraidView$MraidViewListener;

    invoke-interface {v0}, Lcom/youdo/view/MraidView$MraidViewListener;->onResizeCloseBefore()Z

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "window.mraidview.fireChangeEvent({ state: \'default\', size: { width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/youdo/view/MraidView;->mDefaultWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/youdo/view/MraidView;->mDefaultHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "});"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MraidView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeResized: injection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/youdo/view/MraidView;->injectJavaScript(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/youdo/view/MraidView;->resetLayout()V

    sget-object v0, Lorg/openad/constants/IOpenAdContants$ViewState;->DEFAULT:Lorg/openad/constants/IOpenAdContants$ViewState;

    iput-object v0, p0, Lcom/youdo/view/MraidView;->mViewState:Lorg/openad/constants/IOpenAdContants$ViewState;

    iget-object v0, p0, Lcom/youdo/view/MraidView;->mListener:Lcom/youdo/view/MraidView$MraidViewListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youdo/view/MraidView;->mListener:Lcom/youdo/view/MraidView$MraidViewListener;

    invoke-interface {v0}, Lcom/youdo/view/MraidView$MraidViewListener;->onResizeCloseAfter()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private doExpand(Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "expand_dimensions"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/youdo/controller/MraidController$Dimensions;

    const-string v1, "expand_url"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "expand_properties"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/youdo/controller/MraidController$ExpandProperties;

    invoke-static {v2}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/youdo/view/MraidView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, v0}, Lcom/youdo/view/MraidView;->changeContentArea(Lcom/youdo/controller/MraidController$Dimensions;)Landroid/widget/FrameLayout;

    move-result-object v2

    iget-boolean v3, v1, Lcom/youdo/controller/MraidController$ExpandProperties;->useBackground:Z

    if-eqz v3, :cond_1

    iget v3, v1, Lcom/youdo/controller/MraidController$ExpandProperties;->backgroundColor:I

    iget v4, v1, Lcom/youdo/controller/MraidController$ExpandProperties;->backgroundOpacity:F

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    const/high16 v5, 0x10000000

    mul-int/2addr v4, v5

    or-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    :cond_1
    iget-boolean v2, v1, Lcom/youdo/controller/MraidController$ExpandProperties;->useCustomClose:Z

    if-eqz v2, :cond_2

    :cond_2
    iget-boolean v2, v1, Lcom/youdo/controller/MraidController$ExpandProperties;->isModal:Z

    if-eqz v2, :cond_3

    :cond_3
    iget-boolean v1, v1, Lcom/youdo/controller/MraidController$ExpandProperties;->lockOrientation:Z

    if-eqz v1, :cond_4

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "window.mraidview.fireChangeEvent({ state: \'expanded\', size: { width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/youdo/controller/MraidController$Dimensions;->width:I

    int-to-float v2, v2

    iget v3, p0, Lcom/youdo/view/MraidView;->mDensity:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Lcom/youdo/controller/MraidController$Dimensions;->height:I

    int-to-float v0, v0

    iget v2, p0, Lcom/youdo/view/MraidView;->mDensity:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " });"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MraidView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doExpand: injection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/youdo/view/MraidView;->injectJavaScript(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/youdo/view/MraidView;->mListener:Lcom/youdo/view/MraidView$MraidViewListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/youdo/view/MraidView;->mListener:Lcom/youdo/view/MraidView$MraidViewListener;

    invoke-interface {v0}, Lcom/youdo/view/MraidView$MraidViewListener;->onExpand()Z

    :cond_5
    sget-object v0, Lorg/openad/constants/IOpenAdContants$ViewState;->EXPANDED:Lorg/openad/constants/IOpenAdContants$ViewState;

    iput-object v0, p0, Lcom/youdo/view/MraidView;->mViewState:Lorg/openad/constants/IOpenAdContants$ViewState;

    return-void
.end method

.method private doInjectJavaScript(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/youdo/view/UnZoomableOrScrollableWebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "ValueCallback"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/youdo/view/MraidView$9;

    invoke-direct {v0, p0}, Lcom/youdo/view/MraidView$9;-><init>(Lcom/youdo/view/MraidView;)V

    invoke-super {p0, p1, v0}, Lcom/youdo/view/UnZoomableOrScrollableWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private doLoadUrl(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/youdo/view/UnZoomableOrScrollableWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private doOpen(Ljava/lang/String;ZZZ)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/youdo/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/youdo/view/Browser;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "View"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/youdo/view/MraidView;->mAdApplicationContext:Lcom/youdo/ad/interfaces/IAdApplicationContext;

    invoke-interface {v1}, Lcom/youdo/ad/interfaces/IAdApplicationContext;->getXAdSDKResource()Lcom/youdo/XAdSDKResource;

    move-result-object v1

    const-string v2, "browser_bkgrnd"

    iget v3, v1, Lcom/youdo/XAdSDKResource;->browser_bkgrnd:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "browser_leftarrow"

    iget v3, v1, Lcom/youdo/XAdSDKResource;->browser_leftarrow:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "browser_unleftarrow"

    iget v3, v1, Lcom/youdo/XAdSDKResource;->browser_unleftarrow:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "browser_rightarrow"

    iget v3, v1, Lcom/youdo/XAdSDKResource;->browser_rightarrow:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "browser_unrightarrow"

    iget v3, v1, Lcom/youdo/XAdSDKResource;->browser_unrightarrow:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "browser_refresh"

    iget v3, v1, Lcom/youdo/XAdSDKResource;->browser_refresh:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "browser_close"

    iget v1, v1, Lcom/youdo/XAdSDKResource;->browser_close:I

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "extra_url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "open_show_back"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "open_show_forward"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "open_show_refresh"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/youdo/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private failAdAssetLoading()V
    .locals 2

    iget-boolean v0, p0, Lcom/youdo/view/MraidView;->bPageFinished:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/youdo/view/MraidView;->isLoadingTimeout:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/youdo/view/MraidView;->mListener:Lcom/youdo/view/MraidView$MraidViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/view/MraidView;->mListener:Lcom/youdo/view/MraidView$MraidViewListener;

    invoke-interface {v0}, Lcom/youdo/view/MraidView$MraidViewListener;->onError()Z

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/youdo/view/MraidView;->setListener(Lcom/youdo/view/MraidView$MraidViewListener;)V

    :cond_1
    return-void
.end method

.method private forceRedrawByInvalidation()V
    .locals 1

    new-instance v0, Lcom/youdo/view/MraidView$2;

    invoke-direct {v0, p0}, Lcom/youdo/view/MraidView$2;-><init>(Lcom/youdo/view/MraidView;)V

    invoke-virtual {p0, v0}, Lcom/youdo/view/MraidView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private forceRedrawByJSInjection()V
    .locals 2

    invoke-virtual {p0}, Lcom/youdo/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/youdo/view/MraidView$3;

    invoke-direct {v1, p0}, Lcom/youdo/view/MraidView$3;-><init>(Lcom/youdo/view/MraidView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getContentViewHeight()I
    .locals 3

    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/youdo/view/MraidView;->getRootView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    :cond_0
    return v0
.end method

.method private initialize()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled",
            "InlinedApi",
            "NewApi"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/16 v7, 0x12

    const/4 v6, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/youdo/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/youdo/view/MraidView;->mainLoopHandler:Landroid/os/Handler;

    invoke-virtual {p0, v3}, Lcom/youdo/view/MraidView;->setScrollContainer(Z)V

    invoke-virtual {p0, v3}, Lcom/youdo/view/MraidView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0, v3}, Lcom/youdo/view/MraidView;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p0, v3}, Lcom/youdo/view/MraidView;->setBackgroundColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-static {p0, v6, v0}, Lorg/openad/common/util/ViewUtils;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/youdo/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/youdo/view/MraidView;->mDensity:F

    iput-boolean v3, p0, Lcom/youdo/view/MraidView;->bPageFinished:Z

    iget-object v0, p0, Lcom/youdo/view/MraidView;->isLoadingTimeout:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/youdo/view/MraidView;->isLoadingError:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/youdo/view/MraidView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/youdo/view/MraidView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p0}, Lcom/youdo/view/MraidView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {p0}, Lcom/youdo/view/MraidView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {p0}, Lcom/youdo/view/MraidView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {p0}, Lcom/youdo/view/MraidView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {p0}, Lcom/youdo/view/MraidView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    invoke-virtual {p0}, Lcom/youdo/view/MraidView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {p0}, Lcom/youdo/view/MraidView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    invoke-virtual {p0}, Lcom/youdo/view/MraidView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/youdo/view/MraidView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setEnableSmoothTransition(Z)V

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_5

    :try_start_0
    invoke-virtual {p0}, Lcom/youdo/view/MraidView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "setPluginsEnabled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p0}, Lcom/youdo/view/MraidView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :cond_2
    :goto_0
    new-instance v0, Lcom/youdo/controller/MraidUtilityController;

    invoke-virtual {p0}, Lcom/youdo/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/youdo/controller/MraidUtilityController;-><init>(Lcom/youdo/view/MraidView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/youdo/view/MraidView;->mUtilityController:Lcom/youdo/controller/MraidUtilityController;

    invoke-static {}, Lorg/openad/common/util/OSUtils;->isJavascriptInterfaceWorkable()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/youdo/view/MraidView;->mUtilityController:Lcom/youdo/controller/MraidUtilityController;

    const-string v1, "MRAIDUtilityControllerBridge"

    invoke-virtual {p0, v0, v1}, Lcom/youdo/view/MraidView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/youdo/view/MraidView;->mUtilityController:Lcom/youdo/controller/MraidUtilityController;

    invoke-virtual {v0}, Lcom/youdo/controller/MraidUtilityController;->getMraidNetworkController()Lcom/youdo/controller/MraidNetworkController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youdo/controller/MraidNetworkController;->getNetwork()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/youdo/view/MraidView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    :goto_1
    iget-object v0, p0, Lcom/youdo/view/MraidView;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {p0, v0}, Lcom/youdo/view/MraidView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/youdo/view/MraidView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {p0, v0}, Lcom/youdo/view/MraidView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-super {p0}, Lcom/youdo/view/UnZoomableOrScrollableWebView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_4

    invoke-direct {p0}, Lcom/youdo/view/MraidView;->setScriptPath()V

    :cond_4
    invoke-direct {p0}, Lcom/youdo/view/MraidView;->getContentViewHeight()I

    move-result v0

    iput v0, p0, Lcom/youdo/view/MraidView;->mContentViewHeight:I

    invoke-virtual {p0}, Lcom/youdo/view/MraidView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void

    :cond_5
    :try_start_1
    const-string v0, "android.webkit.WebSettings"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mPluginState"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const-string/jumbo v2, "setPluginState"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v7, :cond_6

    const-string v0, "OFF"

    :goto_2
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    invoke-virtual {p0}, Lcom/youdo/view/MraidView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v7, :cond_2

    :try_start_2
    invoke-virtual {p0}, Lcom/youdo/view/MraidView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "setAppCacheMaxSize"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p0}, Lcom/youdo/view/MraidView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-wide/32 v4, 0xa00000

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_6
    :try_start_3
    const-string v0, "ON"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/youdo/view/MraidView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    goto/16 :goto_1

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto/16 :goto_0
.end method

.method private isHoneyCombAndAbove()Z
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_1

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "isHardwareAccelerated"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    const/4 v0, 0x0

    :try_start_1
    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v4, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Ljava/lang/Boolean;

    if-eqz v4, :cond_6

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    :goto_0
    move v1, v0

    move-object v0, v3

    :goto_1
    if-eqz v0, :cond_0

    const-string v3, "MraidView"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v1, :cond_2

    const-string v0, "MraidView"

    const-string/jumbo v1, "using HardWare Acceleration"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    :cond_1
    :goto_2
    return v1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v0, "MraidView"

    const-string v1, "No HardWare Acceleration, the inline video is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_2

    :catch_3
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "MraidView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v0, "MraidView"

    const-string v1, "No HardWare Acceleration, the inline video is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_2

    :catch_4
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "MraidView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string v0, "MraidView"

    const-string v1, "No HardWare Acceleration, the inline video is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_2

    :catchall_0
    move-exception v0

    if-eqz v3, :cond_5

    const-string v1, "MraidView"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string v1, "MraidView"

    const-string v2, "No HardWare Acceleration, the inline video is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method private isRegisteredProtocol(Landroid/net/Uri;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/youdo/view/MraidView;->registeredProtocols:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private loadInputStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/youdo/view/MraidView;->reset()V

    iget-object v0, p0, Lcom/youdo/view/MraidView;->mTimeOut:Lcom/youdo/view/MraidView$WebPageLoadingTimeOut;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/view/MraidView;->mTimeOut:Lcom/youdo/view/MraidView$WebPageLoadingTimeOut;

    invoke-virtual {v0}, Lcom/youdo/view/MraidView$WebPageLoadingTimeOut;->cancel()Z

    :cond_0
    new-instance v0, Lcom/youdo/view/MraidView$WebPageLoadingTimeOut;

    invoke-direct {v0, p0}, Lcom/youdo/view/MraidView$WebPageLoadingTimeOut;-><init>(Lcom/youdo/view/MraidView;)V

    iput-object v0, p0, Lcom/youdo/view/MraidView;->mTimeOut:Lcom/youdo/view/MraidView$WebPageLoadingTimeOut;

    :try_start_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iget-object v1, p0, Lcom/youdo/view/MraidView;->mTimeOut:Lcom/youdo/view/MraidView$WebPageLoadingTimeOut;

    const-wide/16 v2, 0x7d0

    const-wide/16 v4, 0x7d0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    if-eqz p2, :cond_1

    invoke-virtual {p0, p2}, Lcom/youdo/view/MraidView;->injectJavaScript(Ljava/lang/String;)V

    :cond_1
    if-eqz p3, :cond_6

    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_3

    invoke-direct {p0, p3}, Lcom/youdo/view/MraidView;->doLoadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-eqz p1, :cond_2

    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_2
    :goto_2
    return-void

    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/youdo/view/MraidView;->mainLoopHandler:Landroid/os/Handler;

    new-instance v1, Lcom/youdo/view/MraidView$7;

    invoke-direct {v1, p0, p3}, Lcom/youdo/view/MraidView$7;-><init>(Lcom/youdo/view/MraidView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    if-eqz v0, :cond_4

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v1, "MraidView"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    if-eqz p1, :cond_2

    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_5

    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_5
    :goto_3
    throw v0

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_3

    :cond_6
    move-object p3, v6

    goto :goto_0
.end method

.method private reset()V
    .locals 2

    iget-object v0, p0, Lcom/youdo/view/MraidView;->mViewState:Lorg/openad/constants/IOpenAdContants$ViewState;

    sget-object v1, Lorg/openad/constants/IOpenAdContants$ViewState;->EXPANDED:Lorg/openad/constants/IOpenAdContants$ViewState;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/youdo/view/MraidView;->closeExpanded()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/youdo/view/MraidView;->invalidate()V

    iget-object v0, p0, Lcom/youdo/view/MraidView;->mUtilityController:Lcom/youdo/controller/MraidUtilityController;

    invoke-virtual {v0}, Lcom/youdo/controller/MraidUtilityController;->deleteOldAds()V

    iget-object v0, p0, Lcom/youdo/view/MraidView;->mUtilityController:Lcom/youdo/controller/MraidUtilityController;

    invoke-virtual {v0}, Lcom/youdo/controller/MraidUtilityController;->stopAllListeners()V

    invoke-direct {p0}, Lcom/youdo/view/MraidView;->resetLayout()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/youdo/view/MraidView;->mViewState:Lorg/openad/constants/IOpenAdContants$ViewState;

    sget-object v1, Lorg/openad/constants/IOpenAdContants$ViewState;->RESIZED:Lorg/openad/constants/IOpenAdContants$ViewState;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/youdo/view/MraidView;->closeResized()V

    goto :goto_0
.end method

.method private resetLayout()V
    .locals 2

    invoke-virtual {p0}, Lcom/youdo/view/MraidView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-boolean v1, p0, Lcom/youdo/view/MraidView;->bGotLayoutParams:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/youdo/view/MraidView;->mInitLayoutHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v1, p0, Lcom/youdo/view/MraidView;->mInitLayoutWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/youdo/view/MraidView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/youdo/view/MraidView;->requestLayout()V

    return-void
.end method

.method private declared-synchronized setScriptPath()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "(function(){var mraidview=window.mraidview={};var expandProperties={width:-1,height:-1,useBackground:false,backgroundColor:\'#ffffff\',backgroundOpacity:\'1.0\',lockOrientation:false,useCustomClose:false,isModal:true};var orientationProperties={allowOrientationChange:true,forceOrientation:\'none\'};var resizeProperties={width:0,height:0,offsetX:0,offsetY:0,customClosePosition:\'top-right\',allowOffscreen:true};var listeners={};dimensions:{};var nativeCallQueue=[];var nativeCallInFlight=false;var timer;var totalTime;mraidview.fireAssetReadyEvent=function(alias,URL){var handlers=listeners[\'assetReady\'];if(handlers!=null){for(var i=0;i<handlers.length;i++){handlers[i](alias,URL)}};return\'OK\'};mraidview.fireAssetRemovedEvent=function(alias){var handlers=listeners[\'assetRemoved\'];if(handlers!=null){for(var i=0;i<handlers.length;i++){handlers[i](alias)}};return\'OK\'};mraidview.fireAssetRetiredEvent=function(alias){var handlers=listeners[\'assetRetired\'];if(handlers!=null){for(var i=0;i<handlers.length;i++){handlers[i](alias)}};return\'OK\'};mraidview.fireChangeEvent=function(properties){var handlers=listeners[\'change\'];if(handlers!=null){for(var i=0;i<handlers.length;i++){handlers[i](properties)}};return\'OK\'};mraidview.fireErrorEvent=function(message,action){var handlers=listeners[\'error\'];if(handlers!=null){for(var i=0;i<handlers.length;i++){handlers[i](message,action)}};return\'OK\'};mraidview.fireShakeEvent=function(){var handlers=listeners[\'shake\'];if(handlers!=null){for(var i=0;i<handlers.length;i++){handlers[i]()}};return\'OK\'};mraidview.showAlert=function(message){MRAIDUtilityControllerBridge.showAlert(message)};mraidview.zeroPad=function(number){var text=\'\';if(number<10){text+=\'0\'};text+=number;return text};mraidview.activate=function(event){MRAIDUtilityControllerBridge.activate(event)};mraidview.addEventListener=function(event,listener){var handlers=listeners[event];if(handlers==null){listeners[event]=[];handlers=listeners[event]};for(var handler in handlers){if(listener==handler){return}};handlers.push(listener)};mraidview.deactivate=function(event){MRAIDUtilityControllerBridge.deactivate(event)};mraidview.removeEventListener=function(event,listener){var handlers=listeners[event];if(handlers!=null){handlers.remove(listener)}};mraidview.close=function(){try{MRAIDDisplayControllerBridge.close()}catch(e){mraidview.showAlert(\'close: \'+e)}};mraidview.share=function(message){try{MRAIDUtilityControllerBridge.share(message)}catch(e){mraidview.showAlert(\'share: \'+e)}};mraidview.expand=function(dimensions,URL){try{}catch(e){mraidview.showAlert(\'executeNativeExpand: \'+e+\', dimensions = \'+dimensions+\', URL = \'+URL+\', expandProperties = \'+mraidview.getExpandProperties())}};mraidview.hide=function(){try{MRAIDDisplayControllerBridge.hide()}catch(e){mraidview.showAlert(\'hide: \'+e)}};mraidview.open=function(URL,controls){var back=false;var forward=false;var refresh=false;if(controls==null){back=true;forward=true;refresh=true}else{for(var i=0;i<controls.length;i++){if((controls[i]==\'none\')&&(i>0)){self.fireErrorEvent(\'none must be the only navigation element present.\',\'open\');return}else if(controls[i]==\'all\'){if(i>0){self.fireErrorEvent(\'none must be the only navigation element present.\',\'open\');return};back=true;forward=true;refresh=true}else if(controls[i]==\'back\'){back=true}else if(controls[i]==\'forward\'){forward=true}else if(controls[i]==\'refresh\'){refresh=true}}};try{MRAIDDisplayControllerBridge.open(URL,back,forward,refresh)}catch(e){mraidview.showAlert(\'open: \'+e)}};mraidview.openMap=function(POI,fullscreen){try{MRAIDDisplayControllerBridge.openMap(POI,fullscreen)}catch(e){mraidview.showAlert(\'openMap: \'+e)}};mraidview.playAudio=function(URL,properties){var autoPlay=false,controls=false,loop=false,position=false,startStyle=\'normal\',stopStyle=\'normal\';if(properties!=null){if((typeof properties.autoplay!=\'undefined\')&&(properties.autoplay!=null)){autoPlay=true};if((typeof properties.controls!=\'undefined\')&&(properties.controls!=null)){controls=true};if((typeof properties.loop!=\'undefined\')&&(properties.loop!=null)){loop=true};if((typeof properties.position!=\'undefined\')&&(properties.position!=null)){position=true};if((typeof properties.startStyle!=\'undefined\')&&(properties.startStyle!=null)){startStyle=properties.startStyle};if((typeof properties.stopStyle!=\'undefined\')&&(properties.stopStyle!=null)){stopStyle=properties.stopStyle};if(startStyle==\'normal\'){position=true};if(position){autoPlay=true;controls=false;loop=false;stopStyle=\'exit\'};if(loop){stopStyle=\'normal\';controls=true};if(!autoPlay){controls=true};if(!controls){stopStyle=\'exit\'}};try{MRAIDDisplayControllerBridge.playAudio(URL,autoPlay,controls,loop,position,startStyle,stopStyle)}catch(e){mraidview.showAlert(\'playAudio: \'+e)}};mraidview.playVideo=function(URL,properties){var audioMuted=false,autoPlay=false,controls=false,loop=false,position=[-1,-1,-1,-1],startStyle=\'normal\',stopStyle=\'normal\';if(properties!=null){if((typeof properties.audio!=\'undefined\')&&(properties.audio!=null)){audioMuted=true};if((typeof properties.autoplay!=\'undefined\')&&(properties.autoplay!=null)){autoPlay=true};if((typeof properties.controls!=\'undefined\')&&(properties.controls!=null)){controls=true};if((typeof properties.loop!=\'undefined\')&&(properties.loop!=null)){loop=true};if((typeof properties.position!=\'undefined\')&&(properties.position!=null)){inline=new Array(4);inline[0]=properties.position.top;inline[1]=properties.position.left;if((typeof properties.width!=\'undefined\')&&(properties.width!=null)){inline[2]=properties.width}else{};if((typeof properties.height!=\'undefined\')&&(properties.height!=null)){inline[3]=properties.height}else{}};if((typeof properties.startStyle!=\'undefined\')&&(properties.startStyle!=null)){startStyle=properties.startStyle};if((typeof properties.stopStyle!=\'undefined\')&&(properties.stopStyle!=null)){stopStyle=properties.stopStyle};if(loop){stopStyle=\'normal\';controls=true};if(!autoPlay)controls=true;if(!controls){stopStyle=\'exit\'};if(position[0]==-1||position[1]==-1){startStyle=\'fullscreen\'}};try{MRAIDDisplayControllerBridge.playVideo(URL,audioMuted,autoPlay,controls,loop,position,startStyle,stopStyle)}catch(e){mraidview.showAlert(\'playVideo: \'+e)}};mraidview.resize=function(width,height){try{var p=mraidview.getResizeProperties();MRAIDDisplayControllerBridge.resize(width,height,p.offsetX,p.offsetY,p.customClosePosition,p.allowOffscreen)}catch(e){mraidview.showAlert(\'resize: \'+e)}};mraidview.useCustomClose=function(flag){MRAIDDisplayControllerBridge.useCustomClose(flag)};mraidview.getExpandProperties=function(){return expandProperties};mraidview.setExpandProperties=function(properties){expandProperties=properties};mraidview.getOrientationProperties=function(){return orientationProperties};mraidview.setOrientationProperties=function(properties){orientationProperties=properties};mraidview.getResizeProperties=function(){return resizeProperties};mraidview.setResizeProperties=function(properties){resizeProperties=properties};mraidview.show=function(){try{MRAIDDisplayControllerBridge.show()}catch(e){mraidview.showAlert(\'show: \'+e)}};mraidview.createEvent=function(date,title,body){var msecs=(date.getTime()-date.getMilliseconds());try{MRAIDUtilityControllerBridge.createEvent(msecs.toString(),title,body)}catch(e){mraidview.showAlert(\'createEvent: \'+e)}};mraidview.getSDKProfile=function(){var s=\'\';try{s=MRAIDUtilityControllerBridge.getSDKProfile()}catch(e){s=\'getSDKProfile\'+e};return s};mraidview.makeCall=function(phoneNumber){try{MRAIDUtilityControllerBridge.makeCall(phoneNumber)}catch(e){mraidview.showAlert(\'makeCall: \'+e)}};mraidview.sendMail=function(recipient,subject,body){try{MRAIDUtilityControllerBridge.sendMail(recipient,subject,body)}catch(e){mraidview.showAlert(\'sendMail: \'+e)}};mraidview.sendSMS=function(recipient,body){try{MRAIDUtilityControllerBridge.sendSMS(recipient,body)}catch(e){mraidview.showAlert(\'sendSMS: \'+e)}};mraidview.setShakeProperties=function(properties){};mraidview.pauseVideoAd=function(){try{MRAIDDisplayControllerBridge.pauseVideoAd()}catch(e){mraidview.showAlert(\'sendSMS: \'+e)}};mraidview.resumeVideoAd=function(){try{MRAIDDisplayControllerBridge.resumeVideoAd()}catch(e){mraidview.showAlert(\'sendSMS: \'+e)}};mraidview.getVideoAdPlayheadTime=function(){try{return MRAIDUtilityControllerBridge.getVideoAdPlayheadTime()}catch(e){return 0}};mraidview.getVideoAdDuration=function(){try{return MRAIDUtilityControllerBridge.getVideoAdDuration()}catch(e){return 0}};mraidview.addAsset=function(URL,alias){};mraidview.request=function(URI,display){console.log(\'mraidview.request \'+URI+\', \'+display);mraidview.executeNativeCall(\'request\',\'uri\',URI,\'display\',display)};mraidview.removeAsset=function(alias){};mraidview.stringify=function(args){return\'\';};mraidview.stringifyArg=function(arg){return\'\';};mraidview.executeNativeCall=function(command){var bridgeCall=\'mraid://\'+command;var value;var firstArg=true;for(var i=1;i<arguments.length;i+=2){value=arguments[i+1];if(value==null){continue};if(firstArg){bridgeCall+=\'?\';firstArg=false}else{bridgeCall+=\'&\'};bridgeCall+=arguments[i]+\'=\'+escape(value)};console.log(\'executeNativeCall nativeCallInFlight=\'+nativeCallInFlight+\', bridgeCall=\'+bridgeCall);if(nativeCallInFlight){nativeCallQueue.push(bridgeCall)}else{nativeCallInFlight=true;window.location=bridgeCall}};var mraid=window.mraid={};var ormma=window.ormma={};var STATES=ormma.STATES=mraid.STATES={UNKNOWN:\'unknown\',LOADING:\'loading\',DEFAULT:\'default\',RESIZED:\'resized\',EXPANDED:\'expanded\',HIDDEN:\'hidden\'};var EVENTS=ormma.EVENTS=mraid.EVENTS={READY:\'ready\',ASSETREADY:\'assetReady\',ASSETREMOVED:\'assetRemoved\',ASSETRETIRED:\'assetRetired\',ERROR:\'error\',INFO:\'info\',HEADINGCHANGE:\'headingChange\',KEYBOARDCHANGE:\'keyboardChange\',LOCATIONCHANGE:\'locationChange\',NETWORKCHANGE:\'networkChange\',ORIENTATIONCHANGE:\'orientationChange\',RESPONSE:\'response\',SCREENCHANGE:\'screenChange\',SHAKE:\'shake\',SIZECHANGE:\'sizeChange\',STATECHANGE:\'stateChange\',TILTCHANGE:\'tiltChange\',VIEWABLECHANGE:\'viewableChange\',XADSDKVIEWABLECHANGE:\'xadsdkviewableChange\'};var CONTROLS=mraid.CONTROLS={BACK:\'back\',FORWARD:\'forward\',REFRESH:\'refresh\',ALL:\'all\'};var FEATURES=mraid.FEATURES={LEVEL1:\'level-1\',LEVEL2:\'level-2\',LEVEL3:\'level-3\',SCREEN:\'screen\',ORIENTATION:\'orientation\',HEADING:\'heading\',LOCATION:\'location\',SHAKE:\'shake\',TILT:\'tilt\',NETWORK:\'network\',SMS:\'sms\',PHONE:\'phone\',EMAIL:\'email\',CALENDAR:\'calendar\',CAMERA:\'camera\',AUDIO:\'audio\',VIDEO:\'video\',MAP:\'map\'};var NETWORK=mraid.NETWORK={OFFLINE:\'offline\',WIFI:\'wifi\',CELL:\'cell\',UNKNOWN:\'unknown\'};var state=STATES.UNKNOWN;var size={width:0,height:0};var defaultPosition={x:0,y:0,width:0,height:0};var maxSize={width:0,height:0};var supports={\'level-1\':true,\'level-2\':true,\'level-3\':true,\'screen\':true,\'orientation\':true,\'heading\':true,\'location\':true,\'shake\':true,\'tilt\':true,\'network\':true,\'sms\':true,\'phone\':true,\'email\':true,\'calendar\':true,\'camera\':true,\'audio\':true,\'video\':true,\'map\':true};var viewable=true;var xadsdkviewable=true;var heading=-1;var keyboardState=false;var deviceProperties={};var location=null;var network=NETWORK.UNKNOWN;var orientation=-1;var screenSize=null;var shakeProperties=null;var tilt=null;var assets={};var cacheRemaining=-1;var intervalID=null;var readyTimeout=10000;var readyDuration=0;var dimensionValidators={x:function(value){return!isNaN(value)&&value>=0},y:function(value){return!isNaN(value)&&value>=0},width:function(value){return!isNaN(value)&&value>=0&&value<=screenSize.width},height:function(value){return!isNaN(value)&&value>=0&&value<=screenSize.height}};var expandPropertyValidators={width:function(value){return!isNaN(value)&&value>=0&&value<=screenSize.width},height:function(value){return!isNaN(value)&&value>=0&&value<=screenSize.height},useBackground:function(value){return(value===true||value===false)},backgroundColor:function(value){return(typeof value==\'string\'&&value.substr(0,1)==\'#\'&&!isNaN(parseInt(value.substr(1),16)))},backgroundOpacity:function(value){return!isNaN(value)&&value>=0&&value<=1},lockOrientation:function(value){return(value===true||value===false)}};var orientationPropertyValidators={allowOrientationChange:function(value){return(value===true||value===false)},forceOrientation:function(value){return(typeof value==\'string\'&&(value===\'portrait\'||value===\'landscape\'||value===\'none\'))}};var shakePropertyValidators={intensity:function(value){return!isNaN(value)},interval:function(value){return!isNaN(value)}};var changeHandlers={state:function(val){if(state==STATES.UNKNOWN){intervalID=window.setInterval(window.mraid.signalReady,20);broadcastEvent(EVENTS.INFO,\'controller initialized, attempting callback\');console.log(\'controller initialized, attempting callback\')};broadcastEvent(EVENTS.INFO,\'setting state to \'+stringify(val));state=val;broadcastEvent(EVENTS.STATECHANGE,state)},size:function(val){broadcastEvent(EVENTS.INFO,\'setting size to \'+stringify(val));size=val;broadcastEvent(EVENTS.SIZECHANGE,size.width,size.height)},defaultPosition:function(val){broadcastEvent(EVENTS.INFO,\'setting default position to \'+stringify(val));defaultPosition=val},maxSize:function(val){broadcastEvent(EVENTS.INFO,\'setting maxSize to \'+stringify(val));maxSize=val},expandProperties:function(val){broadcastEvent(EVENTS.INFO,\'merging expandProperties with \'+stringify(val));for(var i in val){expandProperties[i]=val[i]}},orientationProperties:function(val){broadcastEvent(EVENTS.INFO,\'merging orientationProperties with \'+stringify(val));for(var i in val){orientationProperties[i]=val[i]}},supports:function(val){broadcastEvent(EVENTS.INFO,\'setting supports to \'+stringify(val));supports={};for(var key in FEATURES){supports[FEATURES[key]]=contains(FEATURES[key],val)}},heading:function(val){broadcastEvent(EVENTS.INFO,\'setting heading to \'+stringify(val));heading=val;broadcastEvent(EVENTS.HEADINGCHANGE,heading)},keyboardState:function(val){broadcastEvent(EVENTS.INFO,\'setting keyboardState to \'+stringify(val));keyboardState=val;broadcastEvent(EVENTS.KEYBOARDCHANGE,keyboardState)},deviceProperties:function(val){deviceProperties=val},location:function(val){broadcastEvent(EVENTS.INFO,\'setting location to \'+stringify(val));location=val;broadcastEvent(EVENTS.LOCATIONCHANGE,location.lat,location.lon,location.acc)},network:function(val){broadcastEvent(EVENTS.INFO,\'setting network to \'+stringify(val));network=val;broadcastEvent(EVENTS.NETWORKCHANGE,(network!=NETWORK.OFFLINE&&network!=NETWORK.UNKNOWN),network)},orientation:function(val){broadcastEvent(EVENTS.INFO,\'setting orientation to \'+stringify(val));orientation=val;broadcastEvent(EVENTS.ORIENTATIONCHANGE,orientation)},screenSize:function(val){broadcastEvent(EVENTS.INFO,\'setting screenSize to \'+stringify(val));screenSize=val;broadcastEvent(EVENTS.SCREENCHANGE,screenSize.width,screenSize.height)},shakeProperties:function(val){broadcastEvent(EVENTS.INFO,\'setting shakeProperties to \'+stringify(val));shakeProperties=val},tilt:function(val){broadcastEvent(EVENTS.INFO,\'setting tilt to \'+stringify(val));tilt=val;broadcastEvent(EVENTS.TILTCHANGE,tilt.x,tilt.y,tilt.z)},cacheRemaining:function(val){broadcastEvent(EVENTS.INFO,\'setting cacheRemaining to \'+stringify(val));cacheRemaining=val},viewable:function(val){viewable=(val===\'true\')||(val===\'1\')||(val===\'yes\');broadcastEvent(EVENTS.VIEWABLECHANGE,viewable)},xadsdkviewable:function(val){xadsdkviewable=(val===\'true\')||(val===\'1\')||(val===\'yes\');broadcastEvent(EVENTS.XADSDKVIEWABLECHANGE,xadsdkviewable)}};var listeners={};var EventListeners=function(event){this.event=event;this.count=0;var listeners={};this.add=function(func){var id=String(func);if(!listeners[id]){listeners[id]=func;this.count++;if(this.count==1)mraidview.activate(event)}};this.remove=function(func){var id=String(func);if(listeners[id]){listeners[id]=null;delete listeners[id];this.count--;if(this.count==0)mraidview.deactivate(event);return true}else{return false}};this.removeAll=function(){for(var id in listeners)this.remove(listeners[id])};this.broadcast=function(args){for(var id in listeners)listeners[id].apply({},args)};this.toString=function(){var out=[event,\':\'];for(var id in listeners)out.push(\'|\',id,\'|\');return out.join(\'\')}};mraidview.addEventListener(\'change\',function(properties){for(var property in properties){var handler=changeHandlers[property];handler(properties[property])}});mraidview.addEventListener(\'shake\',function(){broadcastEvent(EVENTS.SHAKE)});mraidview.addEventListener(\'error\',function(message,action){broadcastEvent(EVENTS.ERROR,message,action)});mraidview.addEventListener(\'response\',function(uri,response){broadcastEvent(EVENTS.RESPONSE,uri,response)});mraidview.addEventListener(\'assetReady\',function(alias,URL){assets[alias]=URL;broadcastEvent(EVENTS.ASSETREADY,alias)});mraidview.addEventListener(\'assetRemoved\',function(alias){assets[alias]=null;delete assets[alias];broadcastEvent(EVENTS.ASSETREMOVED,alias)});mraidview.addEventListener(\'assetRetired\',function(alias){assets[alias]=null;delete assets[alias];broadcastEvent(EVENTS.ASSETRETIRED,alias)});var clone=function(obj){var f=function(){};f.prototype=obj;return new f()};var stringify=function(obj){return\'\';};var valid=function(obj,validators,action,full){if(full){if(obj===undefined){broadcastEvent(EVENTS.ERROR,\'Required object missing.\',action);return false}else{for(var i in validators){if(obj[i]===undefined){broadcastEvent(EVENTS.ERROR,\'Object missing required property \'+i,action);return false}}}};for(var i in obj){if(!validators[i]){broadcastEvent(EVENTS.ERROR,\'Invalid property specified - \'+i+\'.\',action);return false}else if(!validators[i](obj[i])){broadcastEvent(EVENTS.ERROR,\'Value of property \'+i+\'<\'+obj[i]+\'>\'+\' is not valid type.\',action);return false}};return true};var contains=function(value,array){for(var i in array){if(array[i]==value){return true}};return false};var broadcastEvent=function(){var args=new Array(arguments.length);for(var i=0;i<arguments.length;i++){args[i]=arguments[i]};var event=args.shift();try{if(listeners[event]){listeners[event].broadcast(args)};console.log(\'broadcastEvent:\'+event+\':args:\'+args)}catch(e){}};var trim=function(s){var l=0;var r=s.length-1;while(l<s.length&&s[l]==\' \'){l++}while(r>l&&s[r]==\' \'){r-=1};return s.substring(l,r+1)};function mraidReadyEvent(){};function handleStateChangeEvent(){};mraid.signalReady=function(){state=STATES.DEFAULT;mraid.addEventListener(\'stateChange\',handleStateChangeEvent);window.clearInterval(intervalID);broadcastEvent(EVENTS.INFO,\'ready eventListener triggered\');broadcastEvent(mraid.EVENTS.READY,\'mraid ready event triggered\');try{ORMMAReady();mraid.addEventListener(\'ready\',mraidReadyEvent);broadcastEvent(EVENTS.INFO,\'MRAID callback invoked\')}catch(e){console.log(\'ignore errors, will try again soon and then timeout\'+e)}};mraid.addEventListener=function(event,listener){if(!event||!listener){broadcastEvent(EVENTS.ERROR,\'Both event and listener are required.\',\'addEventListener\')}else if(!contains(event,EVENTS)){broadcastEvent(EVENTS.ERROR,\'Unknown event: \'+event,\'addEventListener\')}else{if(!listeners[event]){listeners[event]=new EventListeners(event)};listeners[event].add(listener)}};mraid.close=function(){mraidview.close()};mraid.share=function(message){mraidview.share(message)};mraid.expand=function(URL){var p=mraid.getExpandProperties();var pos=mraid.getDefaultPosition();var d={x:pos.x,y:pos.y,width:p.width,height:p.height};broadcastEvent(EVENTS.INFO,\'expanding to \'+stringify(d)+\', URL=\'+URL);broadcastEvent(EVENTS.INFO,\'expanding to new: \'+stringify(d));if(valid(d,dimensionValidators,\'expand\',true)&&mraid.getState()!=STATES.EXPANDED){mraidview.expand(d,URL);console.log(\'state:\'+mraid.getState())}};mraid.getDefaultPosition=function(){return clone(defaultPosition)};mraid.getCurrentPosition=function(){return mraid.getDefaultPosition()};mraid.getExpandProperties=function(){var p=clone(mraidview.getExpandProperties());var s=clone(mraid.getScreenSize());var obj={x:p.x,y:p.y,width:p.width,height:p.height,useCustomClose:p.useCustomClose,isModal:p.isModal};if(p[\'width\']<=0)obj[\'width\']=s[\'width\'];if(p[\'height\']<=0)obj[\'height\']=s[\'height\'];return obj};mraid.getOrientationProperties=function(){return clone(mraidview.getOrientationProperties())};mraid.getMaxSize=function(){return clone(maxSize)};mraid.getSize=function(){return clone(size)};mraid.getState=function(){return state};mraid.getDeviceProperties=function(){return deviceProperties};mraid.isViewable=function(){return viewable};mraid.getPlacementType=function(){return\'interstitial\'};mraid.getVersion=function(){return\'yd_mraid 1.0\'};mraid.hide=function(){if(state==STATES.HIDDEN){broadcastEvent(EVENTS.ERROR,\'Ad is currently hidden.\',\'hide\')}else{mraidview.hide()}};mraid.open=function(URL,controls){if(!URL){broadcastEvent(EVENTS.ERROR,\'URL is required.\',\'open\')}else{mraidview.open(URL,controls)}};mraid.openMap=function(POI,fullscreen){};mraid.removeEventListener=function(event,listener){if(!event){broadcastEvent(EVENTS.ERROR,\'Must specify an event.\',\'removeEventListener\')}else{if(listener&&(!listeners[event]||!listeners[event].remove(listener))){broadcastEvent(EVENTS.ERROR,\'Listener not currently registered for event\',\'removeEventListener\');return}else if(listeners[event]){listeners[event].removeAll()};if(listeners[event]&&listeners[event].count==0){listeners[event]=null;delete listeners[event]}}};mraid.resize=function(width,height){var w;var h;if(width==null&&height==null){var p=mraid.getResizeProperties();w=p.width;h=p.height;}else{w=width;h=height;};if(mraid.isValidResizeProperties(w,h)){mraidview.resize(w,h)}};mraid.isValidResizeProperties=function(width,height){var b=true;if(width==null||height==null||isNaN(width)||isNaN(height)||width<0||height<0){b=false;broadcastEvent(EVENTS.ERROR,\'Requested size must be numeric values between 0 and maxSize.\',\'resize\')}else if(width>maxSize.width||height>maxSize.height){b=false;broadcastEvent(EVENTS.ERROR,\'Request (\'+width+\' x \'+height+\') exceeds maximum allowable size of (\'+maxSize.width+\' x \'+maxSize.height+\')\',\'resize\')}else if(width==size.width&&height==size.height){};return b};mraid.setExpandProperties=function(properties){mraidview.setExpandProperties(properties);};mraid.setOrientationProperties=function(properties){if(valid(properties,orientationPropertyValidators,\'setOrientationProperties\')){mraidview.setOrientationProperties(properties)}};var isMraidResizePropertiesUpdated=false;mraid.setResizeProperties=function(properties){isMraidResizePropertiesUpdated=true;mraidview.setResizeProperties(properties);};mraid.getResizeProperties=function(){var o=clone(mraidview.getResizeProperties());if(!isMraidResizePropertiesUpdated){var s=mraid.getSize();o[\'width\']=s[\'width\'];o[\'height\']=s[\'height\']};return o};mraid.show=function(){if(state!=STATES.HIDDEN){broadcastEvent(EVENTS.ERROR,\'Ad is currently visible.\',\'show\')}else{mraidview.show()}};mraid.playAudio=function(URL,properties){if(!supports[FEATURES.AUDIO]){broadcastEvent(EVENTS.ERROR,\'Method not supported by this client.\',\'playAudio\')}else if(!URL||typeof URL!=\'string\'){broadcastEvent(EVENTS.ERROR,\'Request must specify a URL\',\'playAudio\')}else{mraidview.playAudio(URL,properties)}};mraid.playVideo=function(URL,properties){if(!supports[FEATURES.VIDEO]){broadcastEvent(EVENTS.ERROR,\'Method not supported by this client.\',\'playVideo\')}else if(!URL||typeof URL!=\'string\'){broadcastEvent(EVENTS.ERROR,\'Request must specify a URL\',\'playVideo\')}else{mraidview.playVideo(URL,properties)}};mraid.createEvent=function(date,title,body){if(!supports[FEATURES.CALENDAR]){broadcastEvent(EVENTS.ERROR,\'Method not supported by this client.\',\'createEvent\')}else if(!date||typeof date!=\'object\'||!date.getDate){broadcastEvent(EVENTS.ERROR,\'Valid date required.\',\'createEvent\')}else if(!title||typeof title!=\'string\'||trim(title).length==0){broadcastEvent(EVENTS.ERROR,\'Valid title required.\',\'createEvent\')}else if(!body||typeof body!=\'string\'||trim(body).length==0){broadcastEvent(EVENTS.ERROR,\'Valid body required.\',\'createEvent\')}else{mraidview.createEvent(date,title,body)}};mraid.getSDKProfile=function(){return mraidview.getSDKProfile()};mraid.getHeading=function(){if(!supports[FEATURES.HEADING]){broadcastEvent(EVENTS.ERROR,\'Method not supported by this client.\',\'getHeading\')};return heading};mraid.getKeyboardState=function(){if(!supports[FEATURES.LEVEL2]){broadcastEvent(EVENTS.ERROR,\'Method not supported by this client.\',\'getKeyboardState\')};return keyboardState};mraid.getLocation=function(){if(!supports[FEATURES.LOCATION]){broadcastEvent(EVENTS.ERROR,\'Method not supported by this client.\',\'getLocation\')};return(null==location)?null:clone(location)};mraid.getNetwork=function(){if(!supports[FEATURES.NETWORK]){broadcastEvent(EVENTS.ERROR,\'Method not supported by this client.\',\'getNetwork\')};return network};mraid.getOrientation=function(){if(!supports[FEATURES.ORIENTATION]){broadcastEvent(EVENTS.ERROR,\'Method not supported by this client.\',\'getOrientation\')};return orientation};mraid.getScreenSize=function(){if(!supports[FEATURES.SCREEN]){broadcastEvent(EVENTS.ERROR,\'Method not supported by this client.\',\'getScreenSize\')}else{return(null==screenSize)?null:clone(screenSize)}};mraid.getShakeProperties=function(){if(!supports[FEATURES.SHAKE]){broadcastEvent(EVENTS.ERROR,\'Method not supported by this client.\',\'getShakeProperties\')}else{return(null==shakeProperties)?null:clone(shakeProperties)}};mraid.getTilt=function(){if(!supports[FEATURES.TILT]){broadcastEvent(EVENTS.ERROR,\'Method not supported by this client.\',\'getTilt\')}else{return(null==tilt)?null:clone(tilt)}};mraid.makeCall=function(number){if(!supports[FEATURES.PHONE]){broadcastEvent(EVENTS.ERROR,\'Method not supported by this client.\',\'makeCall\')}else if(!number||typeof number!=\'string\'||trim(number).length==0){broadcastEvent(EVENTS.ERROR,\'Request must provide a number to call.\',\'makeCall\')}else{mraidview.makeCall(number)}};mraid.sendMail=function(recipient,subject,body){if(!supports[FEATURES.EMAIL]){broadcastEvent(EVENTS.ERROR,\'Method not supported by this client.\',\'sendMail\')}else if(!recipient||typeof recipient!=\'string\'||trim(recipient).length==0){broadcastEvent(EVENTS.ERROR,\'Request must specify a recipient.\',\'sendMail\')}else{mraidview.sendMail(recipient,subject,body)}};mraid.sendSMS=function(recipient,body){if(!supports[FEATURES.SMS]){broadcastEvent(EVENTS.ERROR,\'Method not supported by this client.\',\'sendSMS\')}else if(!recipient||typeof recipient!=\'string\'||trim(recipient).length==0){broadcastEvent(EVENTS.ERROR,\'Request must specify a recipient.\',\'sendSMS\')}else{mraidview.sendSMS(recipient,body)}};mraid.setShakeProperties=function(properties){if(!supports[FEATURES.SHAKE]){broadcastEvent(EVENTS.ERROR,\'Method not supported by this client.\',\'setShakeProperties\')}else if(valid(properties,shakePropertyValidators,\'setShakeProperties\')){mraidview.setShakeProperties(properties)}};mraid.supports=function(feature){if(supports[feature]){return true}else{return false}};mraid.addAsset=function(URL,alias){if(!URL||!alias||typeof URL!=\'string\'||typeof alias!=\'string\'){broadcastEvent(EVENTS.ERROR,\'URL and alias are required.\',\'addAsset\')}else if(supports[FEATURES.LEVEL3]){mraidview.addAsset(URL,alias)}else if(URL.indexOf(\'mraid://\')==0){broadcastEvent(EVENTS.ERROR,\'Native device assets not supported by this client.\',\'addAsset\')}else{assets[alias]=URL;broadcastEvent(EVENTS.ASSETREADY,alias)}};mraid.addAssets=function(assets){for(var alias in assets){mraid.addAsset(assets[alias],alias)}};mraid.getAssetURL=function(alias){if(!assets[alias]){broadcastEvent(EVENTS.ERROR,\'Alias unknown.\',\'getAssetURL\')};return assets[alias]};mraid.getCacheRemaining=function(){if(!supports[FEATURES.LEVEL3]){broadcastEvent(EVENTS.ERROR,\'Method not supported by this client.\',\'getCacheRemaining\')};return cacheRemaining};mraid.request=function(uri,display){console.log(\'mraid.request support_level3=\'+supports[FEATURES.LEVEL3]+\', uri=\'+uri+\', display=\'+display);mraidview.request(uri,display);};mraid.removeAllAssets=function(){for(var alias in assets){mraid.removeAsset(alias)}};mraid.removeAsset=function(alias){if(!alias||typeof alias!=\'string\'){broadcastEvent(EVENTS.ERROR,\'Alias is required.\',\'removeAsset\')}else if(!assets[alias]){broadcastEvent(EVENTS.ERROR,\'Alias unknown.\',\'removeAsset\')}else if(supports[FEATURES.LEVEL3]){mraidview.removeAsset(alias)}else{assets[alias]=null;delete assets[alias];broadcastEvent(EVENTS.ASSETREMOVED,alias)}};mraid.useCustomClose=function(flag){mraidview.useCustomClose(flag);};mraid.pauseVideoAd=function(){mraidview.pauseVideoAd()};mraid.resumeVideoAd=function(){mraidview.resumeVideoAd()};mraid.getVideoAdPlayheadTime=function(){return mraidview.getVideoAdPlayheadTime()};mraid.getVideoAdDuration=function(){return mraidview.getVideoAdDuration()};mraid.setVideoDisplayProperties=function(offsetX,offsetY,drivingAdWidth,drivingAdHeight){mraidview.setVideoDisplayProperties(offsetX,offsetY,drivingAdWidth,drivingAdHeight)};mraid.detachBridgeInterface=function(){};ormma.addEventListener=mraid.addEventListener;ormma.close=mraid.close;ormma.expand=mraid.expand;ormma.getExpandProperties=mraid.getExpandProperties;ormma.getOrientationProperties=mraid.getOrientationProperties;ormma.getState=mraid.getState;ormma.open=mraid.open;ormma.removeEventListener=mraid.removeEventListener;ormma.setExpandProperties=mraid.setExpandProperties;ormma.setOrientationProperties=mraid.setOrientationProperties;ormma.useCustomClose=mraid.useCustomClose;ormma.show=mraid.show;ormma.error=mraid.error;ormma.stateChange=mraid.stateChange;ormma.ready=mraid.ready;ormma.viewableChange=mraid.viewableChange;ormma.getDefaultPosition=mraid.getDefaultPosition;ormma.getMaxSize=mraid.getMaxSize;ormma.getSize=mraid.getSize;ormma.hide=mraid.hide;ormma.resize=mraid.resize;ormma.pauseVideoAd=mraid.pauseVideoAd;ormma.resumeVideoAd=mraid.resumeVideoAd;})();"

    const-string v0, "(function(){var mraidview=window.mraidview={};var expandProperties={width:-1,height:-1,useBackground:false,backgroundColor:\'#ffffff\',backgroundOpacity:\'1.0\',lockOrientation:false,useCustomClose:false,isModal:true};var orientationProperties={allowOrientationChange:true,forceOrientation:\'none\'};var resizeProperties={width:0,height:0,offsetX:0,offsetY:0,customClosePosition:\'top-right\',allowOffscreen:true};var listeners={};dimensions:{};var nativeCallQueue=[];var nativeCallInFlight=false;var timer;var totalTime;mraidview.fireAssetReadyEvent=function(alias,URL){var handlers=listeners[\'assetReady\'];if(handlers!=null){for(var i=0;i<handlers.length;i++){handlers[i](alias,URL)}};return\'OK\'};mraidview.fireAssetRemovedEvent=function(alias){var handlers=listeners[\'assetRemoved\'];if(handlers!=null){for(var i=0;i<handlers.length;i++){handlers[i](alias)}};return\'OK\'};mraidview.fireAssetRetiredEvent=function(alias){var handlers=listeners[\'assetRetired\'];if(handlers!=null){for(var i=0;i<handlers.length;i++){handlers[i](alias)}};return\'OK\'};mraidview.fireChangeEvent=function(properties){var handlers=listeners[\'change\'];if(handlers!=null){for(var i=0;i<handlers.length;i++){handlers[i](properties)}};return\'OK\'};mraidview.fireErrorEvent=function(message,action){var handlers=listeners[\'error\'];if(handlers!=null){for(var i=0;i<handlers.length;i++){handlers[i](message,action)}};return\'OK\'};mraidview.fireShakeEvent=function(){var handlers=listeners[\'shake\'];if(handlers!=null){for(var i=0;i<handlers.length;i++){handlers[i]()}};return\'OK\'};mraidview.showAlert=function(message){MRAIDUtilityControllerBridge.showAlert(message)};mraidview.zeroPad=function(number){var text=\'\';if(number<10){text+=\'0\'};text+=number;return text};mraidview.activate=function(event){MRAIDUtilityControllerBridge.activate(event)};mraidview.addEventListener=function(event,listener){var handlers=listeners[event];if(handlers==null){listeners[event]=[];handlers=listeners[event]};for(var handler in handlers){if(listener==handler){return}};handlers.push(listener)};mraidview.deactivate=function(event){MRAIDUtilityControllerBridge.deactivate(event)};mraidview.removeEventListener=function(event,listener){var handlers=listeners[event];if(handlers!=null){handlers.remove(listener)}};mraidview.close=function(){try{MRAIDDisplayControllerBridge.close()}catch(e){mraidview.showAlert(\'close: \'+e)}};mraidview.share=function(message){try{MRAIDUtilityControllerBridge.share(message)}catch(e){mraidview.showAlert(\'share: \'+e)}};mraidview.expand=function(dimensions,URL){try{}catch(e){mraidview.showAlert(\'executeNativeExpand: \'+e+\', dimensions = \'+dimensions+\', URL = \'+URL+\', expandProperties = \'+mraidview.getExpandProperties())}};mraidview.hide=function(){try{MRAIDDisplayControllerBridge.hide()}catch(e){mraidview.showAlert(\'hide: \'+e)}};mraidview.open=function(URL,controls){var back=false;var forward=false;var refresh=false;if(controls==null){back=true;forward=true;refresh=true}else{for(var i=0;i<controls.length;i++){if((controls[i]==\'none\')&&(i>0)){self.fireErrorEvent(\'none must be the only navigation element present.\',\'open\');return}else if(controls[i]==\'all\'){if(i>0){self.fireErrorEvent(\'none must be the only navigation element present.\',\'open\');return};back=true;forward=true;refresh=true}else if(controls[i]==\'back\'){back=true}else if(controls[i]==\'forward\'){forward=true}else if(controls[i]==\'refresh\'){refresh=true}}};try{MRAIDDisplayControllerBridge.open(URL,back,forward,refresh)}catch(e){mraidview.showAlert(\'open: \'+e)}};mraidview.openMap=function(POI,fullscreen){try{MRAIDDisplayControllerBridge.openMap(POI,fullscreen)}catch(e){mraidview.showAlert(\'openMap: \'+e)}};mraidview.playAudio=function(URL,properties){var autoPlay=false,controls=false,loop=false,position=false,startStyle=\'normal\',stopStyle=\'normal\';if(properties!=null){if((typeof properties.autoplay!=\'undefined\')&&(properties.autoplay!=null)){autoPlay=true};if((typeof properties.controls!=\'undefined\')&&(properties.controls!=null)){controls=true};if((typeof properties.loop!=\'undefined\')&&(properties.loop!=null)){loop=true};if((typeof properties.position!=\'undefined\')&&(properties.position!=null)){position=true};if((typeof properties.startStyle!=\'undefined\')&&(properties.startStyle!=null)){startStyle=properties.startStyle};if((typeof properties.stopStyle!=\'undefined\')&&(properties.stopStyle!=null)){stopStyle=properties.stopStyle};if(startStyle==\'normal\'){position=true};if(position){autoPlay=true;controls=false;loop=false;stopStyle=\'exit\'};if(loop){stopStyle=\'normal\';controls=true};if(!autoPlay){controls=true};if(!controls){stopStyle=\'exit\'}};try{MRAIDDisplayControllerBridge.playAudio(URL,autoPlay,controls,loop,position,startStyle,stopStyle)}catch(e){mraidview.showAlert(\'playAudio: \'+e)}};mraidview.playVideo=function(URL,properties){var audioMuted=false,autoPlay=false,controls=false,loop=false,position=[-1,-1,-1,-1],startStyle=\'normal\',stopStyle=\'normal\';if(properties!=null){if((typeof properties.audio!=\'undefined\')&&(properties.audio!=null)){audioMuted=true};if((typeof properties.autoplay!=\'undefined\')&&(properties.autoplay!=null)){autoPlay=true};if((typeof properties.controls!=\'undefined\')&&(properties.controls!=null)){controls=true};if((typeof properties.loop!=\'undefined\')&&(properties.loop!=null)){loop=true};if((typeof properties.position!=\'undefined\')&&(properties.position!=null)){inline=new Array(4);inline[0]=properties.position.top;inline[1]=properties.position.left;if((typeof properties.width!=\'undefined\')&&(properties.width!=null)){inline[2]=properties.width}else{};if((typeof properties.height!=\'undefined\')&&(properties.height!=null)){inline[3]=properties.height}else{}};if((typeof properties.startStyle!=\'undefined\')&&(properties.startStyle!=null)){startStyle=properties.startStyle};if((typeof properties.stopStyle!=\'undefined\')&&(properties.stopStyle!=null)){stopStyle=properties.stopStyle};if(loop){stopStyle=\'normal\';controls=true};if(!autoPlay)controls=true;if(!controls){stopStyle=\'exit\'};if(position[0]==-1||position[1]==-1){startStyle=\'fullscreen\'}};try{MRAIDDisplayControllerBridge.playVideo(URL,audioMuted,autoPlay,controls,loop,position,startStyle,stopStyle)}catch(e){mraidview.showAlert(\'playVideo: \'+e)}};mraidview.resize=function(width,height){try{var p=mraidview.getResizeProperties();MRAIDDisplayControllerBridge.resize(width,height,p.offsetX,p.offsetY,p.customClosePosition,p.allowOffscreen)}catch(e){mraidview.showAlert(\'resize: \'+e)}};mraidview.useCustomClose=function(flag){MRAIDDisplayControllerBridge.useCustomClose(flag)};mraidview.getExpandProperties=function(){return expandProperties};mraidview.setExpandProperties=function(properties){expandProperties=properties};mraidview.getOrientationProperties=function(){return orientationProperties};mraidview.setOrientationProperties=function(properties){orientationProperties=properties};mraidview.getResizeProperties=function(){return resizeProperties};mraidview.setResizeProperties=function(properties){resizeProperties=properties};mraidview.show=function(){try{MRAIDDisplayControllerBridge.show()}catch(e){mraidview.showAlert(\'show: \'+e)}};mraidview.createEvent=function(date,title,body){var msecs=(date.getTime()-date.getMilliseconds());try{MRAIDUtilityControllerBridge.createEvent(msecs.toString(),title,body)}catch(e){mraidview.showAlert(\'createEvent: \'+e)}};mraidview.getSDKProfile=function(){var s=\'\';try{s=MRAIDUtilityControllerBridge.getSDKProfile()}catch(e){s=\'getSDKProfile\'+e};return s};mraidview.makeCall=function(phoneNumber){try{MRAIDUtilityControllerBridge.makeCall(phoneNumber)}catch(e){mraidview.showAlert(\'makeCall: \'+e)}};mraidview.sendMail=function(recipient,subject,body){try{MRAIDUtilityControllerBridge.sendMail(recipient,subject,body)}catch(e){mraidview.showAlert(\'sendMail: \'+e)}};mraidview.sendSMS=function(recipient,body){try{MRAIDUtilityControllerBridge.sendSMS(recipient,body)}catch(e){mraidview.showAlert(\'sendSMS: \'+e)}};mraidview.setShakeProperties=function(properties){};mraidview.pauseVideoAd=function(){try{MRAIDDisplayControllerBridge.pauseVideoAd()}catch(e){mraidview.showAlert(\'sendSMS: \'+e)}};mraidview.resumeVideoAd=function(){try{MRAIDDisplayControllerBridge.resumeVideoAd()}catch(e){mraidview.showAlert(\'sendSMS: \'+e)}};mraidview.getVideoAdPlayheadTime=function(){try{return MRAIDUtilityControllerBridge.getVideoAdPlayheadTime()}catch(e){return 0}};mraidview.getVideoAdDuration=function(){try{return MRAIDUtilityControllerBridge.getVideoAdDuration()}catch(e){return 0}};mraidview.addAsset=function(URL,alias){};mraidview.request=function(URI,display){console.log(\'mraidview.request \'+URI+\', \'+display);mraidview.executeNativeCall(\'request\',\'uri\',URI,\'display\',display)};mraidview.removeAsset=function(alias){};mraidview.stringify=function(args){return\'\';};mraidview.stringifyArg=function(arg){return\'\';};mraidview.executeNativeCall=function(command){var bridgeCall=\'mraid://\'+command;var value;var firstArg=true;for(var i=1;i<arguments.length;i+=2){value=arguments[i+1];if(value==null){continue};if(firstArg){bridgeCall+=\'?\';firstArg=false}else{bridgeCall+=\'&\'};bridgeCall+=arguments[i]+\'=\'+escape(value)};console.log(\'executeNativeCall nativeCallInFlight=\'+nativeCallInFlight+\', bridgeCall=\'+bridgeCall);if(nativeCallInFlight){nativeCallQueue.push(bridgeCall)}else{nativeCallInFlight=true;window.location=bridgeCall}};var mraid=window.mraid={};var ormma=window.ormma={};var STATES=ormma.STATES=mraid.STATES={UNKNOWN:\'unknown\',LOADING:\'loading\',DEFAULT:\'default\',RESIZED:\'resized\',EXPANDED:\'expanded\',HIDDEN:\'hidden\'};var EVENTS=ormma.EVENTS=mraid.EVENTS={READY:\'ready\',ASSETREADY:\'assetReady\',ASSETREMOVED:\'assetRemoved\',ASSETRETIRED:\'assetRetired\',ERROR:\'error\',INFO:\'info\',HEADINGCHANGE:\'headingChange\',KEYBOARDCHANGE:\'keyboardChange\',LOCATIONCHANGE:\'locationChange\',NETWORKCHANGE:\'networkChange\',ORIENTATIONCHANGE:\'orientationChange\',RESPONSE:\'response\',SCREENCHANGE:\'screenChange\',SHAKE:\'shake\',SIZECHANGE:\'sizeChange\',STATECHANGE:\'stateChange\',TILTCHANGE:\'tiltChange\',VIEWABLECHANGE:\'viewableChange\',XADSDKVIEWABLECHANGE:\'xadsdkviewableChange\'};var CONTROLS=mraid.CONTROLS={BACK:\'back\',FORWARD:\'forward\',REFRESH:\'refresh\',ALL:\'all\'};var FEATURES=mraid.FEATURES={LEVEL1:\'level-1\',LEVEL2:\'level-2\',LEVEL3:\'level-3\',SCREEN:\'screen\',ORIENTATION:\'orientation\',HEADING:\'heading\',LOCATION:\'location\',SHAKE:\'shake\',TILT:\'tilt\',NETWORK:\'network\',SMS:\'sms\',PHONE:\'phone\',EMAIL:\'email\',CALENDAR:\'calendar\',CAMERA:\'camera\',AUDIO:\'audio\',VIDEO:\'video\',MAP:\'map\'};var NETWORK=mraid.NETWORK={OFFLINE:\'offline\',WIFI:\'wifi\',CELL:\'cell\',UNKNOWN:\'unknown\'};var state=STATES.UNKNOWN;var size={width:0,height:0};var defaultPosition={x:0,y:0,width:0,height:0};var maxSize={width:0,height:0};var supports={\'level-1\':true,\'level-2\':true,\'level-3\':true,\'screen\':true,\'orientation\':true,\'heading\':true,\'location\':true,\'shake\':true,\'tilt\':true,\'network\':true,\'sms\':true,\'phone\':true,\'email\':true,\'calendar\':true,\'camera\':true,\'audio\':true,\'video\':true,\'map\':true};var viewable=true;var xadsdkviewable=true;var heading=-1;var keyboardState=false;var deviceProperties={};var location=null;var network=NETWORK.UNKNOWN;var orientation=-1;var screenSize=null;var shakeProperties=null;var tilt=null;var assets={};var cacheRemaining=-1;var intervalID=null;var readyTimeout=10000;var readyDuration=0;var dimensionValidators={x:function(value){return!isNaN(value)&&value>=0},y:function(value){return!isNaN(value)&&value>=0},width:function(value){return!isNaN(value)&&value>=0&&value<=screenSize.width},height:function(value){return!isNaN(value)&&value>=0&&value<=screenSize.height}};var expandPropertyValidators={width:function(value){return!isNaN(value)&&value>=0&&value<=screenSize.width},height:function(value){return!isNaN(value)&&value>=0&&value<=screenSize.height},useBackground:function(value){return(value===true||value===false)},backgroundColor:function(value){return(typeof value==\'string\'&&value.substr(0,1)==\'#\'&&!isNaN(parseInt(value.substr(1),16)))},backgroundOpacity:function(value){return!isNaN(value)&&value>=0&&value<=1},lockOrientation:function(value){return(value===true||value===false)}};var orientationPropertyValidators={allowOrientationChange:function(value){return(value===true||value===false)},forceOrientation:function(value){return(typeof value==\'string\'&&(value===\'portrait\'||value===\'landscape\'||value===\'none\'))}};var shakePropertyValidators={intensity:function(value){return!isNaN(value)},interval:function(value){return!isNaN(value)}};var changeHandlers={state:function(val){if(state==STATES.UNKNOWN){intervalID=window.setInterval(window.mraid.signalReady,20);broadcastEvent(EVENTS.INFO,\'controller initialized, attempting callback\');console.log(\'controller initialized, attempting callback\')};broadcastEvent(EVENTS.INFO,\'setting state to \'+stringify(val));state=val;broadcastEvent(EVENTS.STATECHANGE,state)},size:function(val){broadcastEvent(EVENTS.INFO,\'setting size to \'+stringify(val));size=val;broadcastEvent(EVENTS.SIZECHANGE,size.width,size.height)},defaultPosition:function(val){broadcastEvent(EVENTS.INFO,\'setting default position to \'+stringify(val));defaultPosition=val},maxSize:function(val){broadcastEvent(EVENTS.INFO,\'setting maxSize to \'+stringify(val));maxSize=val},expandProperties:function(val){broadcastEvent(EVENTS.INFO,\'merging expandProperties with \'+stringify(val));for(var i in val){expandProperties[i]=val[i]}},orientationProperties:function(val){broadcastEvent(EVENTS.INFO,\'merging orientationProperties with \'+stringify(val));for(var i in val){orientationProperties[i]=val[i]}},supports:function(val){broadcastEvent(EVENTS.INFO,\'setting supports to \'+stringify(val));supports={};for(var key in FEATURES){supports[FEATURES[key]]=contains(FEATURES[key],val)}},heading:function(val){broadcastEvent(EVENTS.INFO,\'setting heading to \'+stringify(val));heading=val;broadcastEvent(EVENTS.HEADINGCHANGE,heading)},keyboardState:function(val){broadcastEvent(EVENTS.INFO,\'setting keyboardState to \'+stringify(val));keyboardState=val;broadcastEvent(EVENTS.KEYBOARDCHANGE,keyboardState)},deviceProperties:function(val){deviceProperties=val},location:function(val){broadcastEvent(EVENTS.INFO,\'setting location to \'+stringify(val));location=val;broadcastEvent(EVENTS.LOCATIONCHANGE,location.lat,location.lon,location.acc)},network:function(val){broadcastEvent(EVENTS.INFO,\'setting network to \'+stringify(val));network=val;broadcastEvent(EVENTS.NETWORKCHANGE,(network!=NETWORK.OFFLINE&&network!=NETWORK.UNKNOWN),network)},orientation:function(val){broadcastEvent(EVENTS.INFO,\'setting orientation to \'+stringify(val));orientation=val;broadcastEvent(EVENTS.ORIENTATIONCHANGE,orientation)},screenSize:function(val){broadcastEvent(EVENTS.INFO,\'setting screenSize to \'+stringify(val));screenSize=val;broadcastEvent(EVENTS.SCREENCHANGE,screenSize.width,screenSize.height)},shakeProperties:function(val){broadcastEvent(EVENTS.INFO,\'setting shakeProperties to \'+stringify(val));shakeProperties=val},tilt:function(val){broadcastEvent(EVENTS.INFO,\'setting tilt to \'+stringify(val));tilt=val;broadcastEvent(EVENTS.TILTCHANGE,tilt.x,tilt.y,tilt.z)},cacheRemaining:function(val){broadcastEvent(EVENTS.INFO,\'setting cacheRemaining to \'+stringify(val));cacheRemaining=val},viewable:function(val){viewable=(val===\'true\')||(val===\'1\')||(val===\'yes\');broadcastEvent(EVENTS.VIEWABLECHANGE,viewable)},xadsdkviewable:function(val){xadsdkviewable=(val===\'true\')||(val===\'1\')||(val===\'yes\');broadcastEvent(EVENTS.XADSDKVIEWABLECHANGE,xadsdkviewable)}};var listeners={};var EventListeners=function(event){this.event=event;this.count=0;var listeners={};this.add=function(func){var id=String(func);if(!listeners[id]){listeners[id]=func;this.count++;if(this.count==1)mraidview.activate(event)}};this.remove=function(func){var id=String(func);if(listeners[id]){listeners[id]=null;delete listeners[id];this.count--;if(this.count==0)mraidview.deactivate(event);return true}else{return false}};this.removeAll=function(){for(var id in listeners)this.remove(listeners[id])};this.broadcast=function(args){for(var id in listeners)listeners[id].apply({},args)};this.toString=function(){var out=[event,\':\'];for(var id in listeners)out.push(\'|\',id,\'|\');return out.join(\'\')}};mraidview.addEventListener(\'change\',function(properties){for(var property in properties){var handler=changeHandlers[property];handler(properties[property])}});mraidview.addEventListener(\'shake\',function(){broadcastEvent(EVENTS.SHAKE)});mraidview.addEventListener(\'error\',function(message,action){broadcastEvent(EVENTS.ERROR,message,action)});mraidview.addEventListener(\'response\',function(uri,response){broadcastEvent(EVENTS.RESPONSE,uri,response)});mraidview.addEventListener(\'assetReady\',function(alias,URL){assets[alias]=URL;broadcastEvent(EVENTS.ASSETREADY,alias)});mraidview.addEventListener(\'assetRemoved\',function(alias){assets[alias]=null;delete assets[alias];broadcastEvent(EVENTS.ASSETREMOVED,alias)});mraidview.addEventListener(\'assetRetired\',function(alias){assets[alias]=null;delete assets[alias];broadcastEvent(EVENTS.ASSETRETIRED,alias)});var clone=function(obj){var f=function(){};f.prototype=obj;return new f()};var stringify=function(obj){return\'\';};var valid=function(obj,validators,action,full){if(full){if(obj===undefined){broadcastEvent(EVENTS.ERROR,\'Required object missing.\',action);return false}else{for(var i in validators){if(obj[i]===undefined){broadcastEvent(EVENTS.ERROR,\'Object missing required property \'+i,action);return false}}}};for(var i in obj){if(!validators[i]){broadcastEvent(EVENTS.ERROR,\'Invalid property specified - \'+i+\'.\',action);return false}else if(!validators[i](obj[i])){broadcastEvent(EVENTS.ERROR,\'Value of property \'+i+\'<\'+obj[i]+\'>\'+\' is not valid type.\',action);return false}};return true};var contains=function(value,array){for(var i in array){if(array[i]==value){return true}};return false};var broadcastEvent=function(){var args=new Array(arguments.length);for(var i=0;i<arguments.length;i++){args[i]=arguments[i]};var event=args.shift();try{if(listeners[event]){listeners[event].broadcast(args)};console.log(\'broadcastEvent:\'+event+\':args:\'+args)}catch(e){}};var trim=function(s){var l=0;var r=s.length-1;while(l<s.length&&s[l]==\' \'){l++}while(r>l&&s[r]==\' \'){r-=1};return s.substring(l,r+1)};function mraidReadyEvent(){};function handleStateChangeEvent(){};mraid.signalReady=function(){state=STATES.DEFAULT;mraid.addEventListener(\'stateChange\',handleStateChangeEvent);window.clearInterval(intervalID);broadcastEvent(EVENTS.INFO,\'ready eventListener triggered\');broadcastEvent(mraid.EVENTS.READY,\'mraid ready event triggered\');try{ORMMAReady();mraid.addEventListener(\'ready\',mraidReadyEvent);broadcastEvent(EVENTS.INFO,\'MRAID callback invoked\')}catch(e){console.log(\'ignore errors, will try again soon and then timeout\'+e)}};mraid.addEventListener=function(event,listener){if(!event||!listener){broadcastEvent(EVENTS.ERROR,\'Both event and listener are required.\',\'addEventListener\')}else if(!contains(event,EVENTS)){broadcastEvent(EVENTS.ERROR,\'Unknown event: \'+event,\'addEventListener\')}else{if(!listeners[event]){listeners[event]=new EventListeners(event)};listeners[event].add(listener)}};mraid.close=function(){mraidview.close()};mraid.share=function(message){mraidview.share(message)};mraid.expand=function(URL){var p=mraid.getExpandProperties();var pos=mraid.getDefaultPosition();var d={x:pos.x,y:pos.y,width:p.width,height:p.height};broadcastEvent(EVENTS.INFO,\'expanding to \'+stringify(d)+\', URL=\'+URL);broadcastEvent(EVENTS.INFO,\'expanding to new: \'+stringify(d));if(valid(d,dimensionValidators,\'expand\',true)&&mraid.getState()!=STATES.EXPANDED){mraidview.expand(d,URL);console.log(\'state:\'+mraid.getState())}};mraid.getDefaultPosition=function(){return clone(defaultPosition)};mraid.getCurrentPosition=function(){return mraid.getDefaultPosition()};mraid.getExpandProperties=function(){var p=clone(mraidview.getExpandProperties());var s=clone(mraid.getScreenSize());var obj={x:p.x,y:p.y,width:p.width,height:p.height,useCustomClose:p.useCustomClose,isModal:p.isModal};if(p[\'width\']<=0)obj[\'width\']=s[\'width\'];if(p[\'height\']<=0)obj[\'height\']=s[\'height\'];return obj};mraid.getOrientationProperties=function(){return clone(mraidview.getOrientationProperties())};mraid.getMaxSize=function(){return clone(maxSize)};mraid.getSize=function(){return clone(size)};mraid.getState=function(){return state};mraid.getDeviceProperties=function(){return deviceProperties};mraid.isViewable=function(){return viewable};mraid.getPlacementType=function(){return\'interstitial\'};mraid.getVersion=function(){return\'yd_mraid 1.0\'};mraid.hide=function(){if(state==STATES.HIDDEN){broadcastEvent(EVENTS.ERROR,\'Ad is currently hidden.\',\'hide\')}else{mraidview.hide()}};mraid.open=function(URL,controls){if(!URL){broadcastEvent(EVENTS.ERROR,\'URL is required.\',\'open\')}else{mraidview.open(URL,controls)}};mraid.openMap=function(POI,fullscreen){};mraid.removeEventListener=function(event,listener){if(!event){broadcastEvent(EVENTS.ERROR,\'Must specify an event.\',\'removeEventListener\')}else{if(listener&&(!listeners[event]||!listeners[event].remove(listener))){broadcastEvent(EVENTS.ERROR,\'Listener not currently registered for event\',\'removeEventListener\');return}else if(listeners[event]){listeners[event].removeAll()};if(listeners[event]&&listeners[event].count==0){listeners[event]=null;delete listeners[event]}}};mraid.resize=function(width,height){var w;var h;if(width==null&&height==null){var p=mraid.getResizeProperties();w=p.width;h=p.height;}else{w=width;h=height;};if(mraid.isValidResizeProperties(w,h)){mraidview.resize(w,h)}};mraid.isValidResizeProperties=function(width,height){var b=true;if(width==null||height==null||isNaN(width)||isNaN(height)||width<0||height<0){b=false;broadcastEvent(EVENTS.ERROR,\'Requested size must be numeric values between 0 and maxSize.\',\'resize\')}else if(width>maxSize.width||height>maxSize.height){b=false;broadcastEvent(EVENTS.ERROR,\'Request (\'+width+\' x \'+height+\') exceeds maximum allowable size of (\'+maxSize.width+\' x \'+maxSize.height+\')\',\'resize\')}else if(width==size.width&&height==size.height){};return b};mraid.setExpandProperties=function(properties){mraidview.setExpandProperties(properties);};mraid.setOrientationProperties=function(properties){if(valid(properties,orientationPropertyValidators,\'setOrientationProperties\')){mraidview.setOrientationProperties(properties)}};var isMraidResizePropertiesUpdated=false;mraid.setResizeProperties=function(properties){isMraidResizePropertiesUpdated=true;mraidview.setResizeProperties(properties);};mraid.getResizeProperties=function(){var o=clone(mraidview.getResizeProperties());if(!isMraidResizePropertiesUpdated){var s=mraid.getSize();o[\'width\']=s[\'width\'];o[\'height\']=s[\'height\']};return o};mraid.show=function(){if(state!=STATES.HIDDEN){broadcastEvent(EVENTS.ERROR,\'Ad is currently visible.\',\'show\')}else{mraidview.show()}};mraid.playAudio=function(URL,properties){if(!supports[FEATURES.AUDIO]){broadcastEvent(EVENTS.ERROR,\'Method not supported by this client.\',\'playAudio\')}else if(!URL||typeof URL!=\'string\'){broadcastEvent(EVENTS.ERROR,\'Request must specify a URL\',\'playAudio\')}else{mraidview.playAudio(URL,properties)}};mraid.playVideo=function(URL,properties){if(!supports[FEATURES.VIDEO]){broadcastEvent(EVENTS.ERROR,\'Method not supported by this client.\',\'playVideo\')}else if(!URL||typeof URL!=\'string\'){broadcastEvent(EVENTS.ERROR,\'Request must specify a URL\',\'playVideo\')}else{mraidview.playVideo(URL,properties)}};mraid.createEvent=function(date,title,body){if(!supports[FEATURES.CALENDAR]){broadcastEvent(EVENTS.ERROR,\'Method not supported by this client.\',\'createEvent\')}else if(!date||typeof date!=\'object\'||!date.getDate){broadcastEvent(EVENTS.ERROR,\'Valid date required.\',\'createEvent\')}else if(!title||typeof title!=\'string\'||trim(title).length==0){broadcastEvent(EVENTS.ERROR,\'Valid title required.\',\'createEvent\')}else if(!body||typeof body!=\'string\'||trim(body).length==0){broadcastEvent(EVENTS.ERROR,\'Valid body required.\',\'createEvent\')}else{mraidview.createEvent(date,title,body)}};mraid.getSDKProfile=function(){return mraidview.getSDKProfile()};mraid.getHeading=function(){if(!supports[FEATURES.HEADING]){broadcastEvent(EVENTS.ERROR,\'Method not supported by this client.\',\'getHeading\')};return heading};mraid.getKeyboardState=function(){if(!supports[FEATURES.LEVEL2]){broadcastEvent(EVENTS.ERROR,\'Method not supported by this client.\',\'getKeyboardState\')};return keyboardState};mraid.getLocation=function(){if(!supports[FEATURES.LOCATION]){broadcastEvent(EVENTS.ERROR,\'Method not supported by this client.\',\'getLocation\')};return(null==location)?null:clone(location)};mraid.getNetwork=function(){if(!supports[FEATURES.NETWORK]){broadcastEvent(EVENTS.ERROR,\'Method not supported by this client.\',\'getNetwork\')};return network};mraid.getOrientation=function(){if(!supports[FEATURES.ORIENTATION]){broadcastEvent(EVENTS.ERROR,\'Method not supported by this client.\',\'getOrientation\')};return orientation};mraid.getScreenSize=function(){if(!supports[FEATURES.SCREEN]){broadcastEvent(EVENTS.ERROR,\'Method not supported by this client.\',\'getScreenSize\')}else{return(null==screenSize)?null:clone(screenSize)}};mraid.getShakeProperties=function(){if(!supports[FEATURES.SHAKE]){broadcastEvent(EVENTS.ERROR,\'Method not supported by this client.\',\'getShakeProperties\')}else{return(null==shakeProperties)?null:clone(shakeProperties)}};mraid.getTilt=function(){if(!supports[FEATURES.TILT]){broadcastEvent(EVENTS.ERROR,\'Method not supported by this client.\',\'getTilt\')}else{return(null==tilt)?null:clone(tilt)}};mraid.makeCall=function(number){if(!supports[FEATURES.PHONE]){broadcastEvent(EVENTS.ERROR,\'Method not supported by this client.\',\'makeCall\')}else if(!number||typeof number!=\'string\'||trim(number).length==0){broadcastEvent(EVENTS.ERROR,\'Request must provide a number to call.\',\'makeCall\')}else{mraidview.makeCall(number)}};mraid.sendMail=function(recipient,subject,body){if(!supports[FEATURES.EMAIL]){broadcastEvent(EVENTS.ERROR,\'Method not supported by this client.\',\'sendMail\')}else if(!recipient||typeof recipient!=\'string\'||trim(recipient).length==0){broadcastEvent(EVENTS.ERROR,\'Request must specify a recipient.\',\'sendMail\')}else{mraidview.sendMail(recipient,subject,body)}};mraid.sendSMS=function(recipient,body){if(!supports[FEATURES.SMS]){broadcastEvent(EVENTS.ERROR,\'Method not supported by this client.\',\'sendSMS\')}else if(!recipient||typeof recipient!=\'string\'||trim(recipient).length==0){broadcastEvent(EVENTS.ERROR,\'Request must specify a recipient.\',\'sendSMS\')}else{mraidview.sendSMS(recipient,body)}};mraid.setShakeProperties=function(properties){if(!supports[FEATURES.SHAKE]){broadcastEvent(EVENTS.ERROR,\'Method not supported by this client.\',\'setShakeProperties\')}else if(valid(properties,shakePropertyValidators,\'setShakeProperties\')){mraidview.setShakeProperties(properties)}};mraid.supports=function(feature){if(supports[feature]){return true}else{return false}};mraid.addAsset=function(URL,alias){if(!URL||!alias||typeof URL!=\'string\'||typeof alias!=\'string\'){broadcastEvent(EVENTS.ERROR,\'URL and alias are required.\',\'addAsset\')}else if(supports[FEATURES.LEVEL3]){mraidview.addAsset(URL,alias)}else if(URL.indexOf(\'mraid://\')==0){broadcastEvent(EVENTS.ERROR,\'Native device assets not supported by this client.\',\'addAsset\')}else{assets[alias]=URL;broadcastEvent(EVENTS.ASSETREADY,alias)}};mraid.addAssets=function(assets){for(var alias in assets){mraid.addAsset(assets[alias],alias)}};mraid.getAssetURL=function(alias){if(!assets[alias]){broadcastEvent(EVENTS.ERROR,\'Alias unknown.\',\'getAssetURL\')};return assets[alias]};mraid.getCacheRemaining=function(){if(!supports[FEATURES.LEVEL3]){broadcastEvent(EVENTS.ERROR,\'Method not supported by this client.\',\'getCacheRemaining\')};return cacheRemaining};mraid.request=function(uri,display){console.log(\'mraid.request support_level3=\'+supports[FEATURES.LEVEL3]+\', uri=\'+uri+\', display=\'+display);mraidview.request(uri,display);};mraid.removeAllAssets=function(){for(var alias in assets){mraid.removeAsset(alias)}};mraid.removeAsset=function(alias){if(!alias||typeof alias!=\'string\'){broadcastEvent(EVENTS.ERROR,\'Alias is required.\',\'removeAsset\')}else if(!assets[alias]){broadcastEvent(EVENTS.ERROR,\'Alias unknown.\',\'removeAsset\')}else if(supports[FEATURES.LEVEL3]){mraidview.removeAsset(alias)}else{assets[alias]=null;delete assets[alias];broadcastEvent(EVENTS.ASSETREMOVED,alias)}};mraid.useCustomClose=function(flag){mraidview.useCustomClose(flag);};mraid.pauseVideoAd=function(){mraidview.pauseVideoAd()};mraid.resumeVideoAd=function(){mraidview.resumeVideoAd()};mraid.getVideoAdPlayheadTime=function(){return mraidview.getVideoAdPlayheadTime()};mraid.getVideoAdDuration=function(){return mraidview.getVideoAdDuration()};mraid.setVideoDisplayProperties=function(offsetX,offsetY,drivingAdWidth,drivingAdHeight){mraidview.setVideoDisplayProperties(offsetX,offsetY,drivingAdWidth,drivingAdHeight)};mraid.detachBridgeInterface=function(){};ormma.addEventListener=mraid.addEventListener;ormma.close=mraid.close;ormma.expand=mraid.expand;ormma.getExpandProperties=mraid.getExpandProperties;ormma.getOrientationProperties=mraid.getOrientationProperties;ormma.getState=mraid.getState;ormma.open=mraid.open;ormma.removeEventListener=mraid.removeEventListener;ormma.setExpandProperties=mraid.setExpandProperties;ormma.setOrientationProperties=mraid.setOrientationProperties;ormma.useCustomClose=mraid.useCustomClose;ormma.show=mraid.show;ormma.error=mraid.error;ormma.stateChange=mraid.stateChange;ormma.ready=mraid.ready;ormma.viewableChange=mraid.viewableChange;ormma.getDefaultPosition=mraid.getDefaultPosition;ormma.getMaxSize=mraid.getMaxSize;ormma.getSize=mraid.getSize;ormma.hide=mraid.hide;ormma.resize=mraid.resize;ormma.pauseVideoAd=mraid.pauseVideoAd;ormma.resumeVideoAd=mraid.resumeVideoAd;})();"

    invoke-virtual {p0, v0}, Lcom/youdo/view/MraidView;->injectJavaScript(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startAdAssetTimer()V
    .locals 3

    invoke-direct {p0}, Lcom/youdo/view/MraidView;->stopAdAssetTimer()V

    iget-object v0, p0, Lcom/youdo/view/MraidView;->isLoadingTimeout:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, Lorg/openad/common/util/XYDTimer;

    iget-object v1, p0, Lcom/youdo/view/MraidView;->mAdApplicationContext:Lcom/youdo/ad/interfaces/IAdApplicationContext;

    invoke-interface {v1}, Lcom/youdo/ad/interfaces/IAdApplicationContext;->getTimeout()I

    move-result v1

    new-instance v2, Lcom/youdo/view/MraidView$14;

    invoke-direct {v2, p0}, Lcom/youdo/view/MraidView$14;-><init>(Lcom/youdo/view/MraidView;)V

    invoke-direct {v0, v1, v2}, Lorg/openad/common/util/XYDTimer;-><init>(ILorg/openad/common/util/XYDTimer$EventHandler;)V

    iput-object v0, p0, Lcom/youdo/view/MraidView;->mAdAssetTimer:Lorg/openad/common/util/XYDTimer;

    iget-object v0, p0, Lcom/youdo/view/MraidView;->mAdAssetTimer:Lorg/openad/common/util/XYDTimer;

    invoke-virtual {v0}, Lorg/openad/common/util/XYDTimer;->start()V

    return-void
.end method

.method private stopAdAssetTimer()V
    .locals 1

    iget-object v0, p0, Lcom/youdo/view/MraidView;->mAdAssetTimer:Lorg/openad/common/util/XYDTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/view/MraidView;->mAdAssetTimer:Lorg/openad/common/util/XYDTimer;

    invoke-virtual {v0}, Lorg/openad/common/util/XYDTimer;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youdo/view/MraidView;->mAdAssetTimer:Lorg/openad/common/util/XYDTimer;

    :cond_0
    return-void
.end method


# virtual methods
.method public addJavascriptObject(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lorg/openad/common/util/OSUtils;->isJavascriptInterfaceWorkable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/youdo/view/MraidView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public clearView()V
    .locals 0

    invoke-direct {p0}, Lcom/youdo/view/MraidView;->reset()V

    invoke-super {p0}, Lcom/youdo/view/UnZoomableOrScrollableWebView;->clearView()V

    return-void
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/youdo/view/MraidView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected declared-synchronized closeExpanded()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/youdo/view/MraidView;->resetContents()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "window.mraidview.fireChangeEvent({ state: \'default\', size: { width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/youdo/view/MraidView;->mDefaultWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/youdo/view/MraidView;->mDefaultHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "});"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MraidView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeExpanded: injection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/youdo/view/MraidView;->injectJavaScript(Ljava/lang/String;)V

    sget-object v0, Lorg/openad/constants/IOpenAdContants$ViewState;->DEFAULT:Lorg/openad/constants/IOpenAdContants$ViewState;

    iput-object v0, p0, Lcom/youdo/view/MraidView;->mViewState:Lorg/openad/constants/IOpenAdContants$ViewState;

    iget-object v0, p0, Lcom/youdo/view/MraidView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/youdo/view/MraidView;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected closeOpened(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/youdo/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/youdo/view/MraidView;->requestLayout()V

    return-void
.end method

.method public deregisterProtocol(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/youdo/view/MraidView;->registeredProtocols:Ljava/util/HashSet;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/youdo/view/MraidView;->setListener(Lcom/youdo/view/MraidView$MraidViewListener;)V

    iget-object v0, p0, Lcom/youdo/view/MraidView;->mainLoopHandler:Landroid/os/Handler;

    new-instance v1, Lcom/youdo/view/MraidView$15;

    invoke-direct {v1, p0}, Lcom/youdo/view/MraidView$15;-><init>(Lcom/youdo/view/MraidView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dump()V
    .locals 0

    return-void
.end method

.method public expand(Lcom/youdo/controller/MraidController$Dimensions;Ljava/lang/String;Lcom/youdo/controller/MraidController$ExpandProperties;)V
    .locals 3

    iget-object v0, p0, Lcom/youdo/view/MraidView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "expand_dimensions"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "expand_url"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "expand_properties"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/youdo/view/MraidView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public getAdApplicationContext()Lcom/youdo/ad/interfaces/IAdApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/youdo/view/MraidView;->mAdApplicationContext:Lcom/youdo/ad/interfaces/IAdApplicationContext;

    return-object v0
.end method

.method public getAdsDefaultHeight()F
    .locals 1

    iget v0, p0, Lcom/youdo/view/MraidView;->defaultHeight:F

    return v0
.end method

.method public getAdsDefaultWidth()F
    .locals 1

    iget v0, p0, Lcom/youdo/view/MraidView;->defaultWidth:F

    return v0
.end method

.method public getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    invoke-virtual {p0}, Lcom/youdo/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method public getDefaultPositionX()I
    .locals 1

    iget v0, p0, Lcom/youdo/view/MraidView;->mDefaultPositionX:I

    return v0
.end method

.method public getDefaultPositionY()I
    .locals 1

    iget v0, p0, Lcom/youdo/view/MraidView;->mDefaultPositionY:I

    return v0
.end method

.method public getEmbeddedBrowserOpened()Z
    .locals 1

    iget-boolean v0, p0, Lcom/youdo/view/MraidView;->embeddedBrowserOpened:Z

    return v0
.end method

.method public getInitLayoutHeight()I
    .locals 1

    iget v0, p0, Lcom/youdo/view/MraidView;->mInitLayoutHeight:I

    return v0
.end method

.method public getInitLayoutWidth()I
    .locals 1

    iget v0, p0, Lcom/youdo/view/MraidView;->mInitLayoutWidth:I

    return v0
.end method

.method getPlayer(I)Lcom/youdo/controller/util/MraidPlayer;
    .locals 2

    sget-object v0, Lcom/youdo/view/MraidView;->player:Lcom/youdo/controller/util/MraidPlayer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/youdo/view/MraidView;->player:Lcom/youdo/controller/util/MraidPlayer;

    invoke-virtual {v0}, Lcom/youdo/controller/util/MraidPlayer;->releasePlayer()V

    :cond_0
    new-instance v0, Lcom/youdo/controller/util/MraidPlayer;

    invoke-virtual {p0}, Lcom/youdo/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/youdo/controller/util/MraidPlayer;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/youdo/view/MraidView;->player:Lcom/youdo/controller/util/MraidPlayer;

    sget-object v0, Lcom/youdo/view/MraidView;->player:Lcom/youdo/controller/util/MraidPlayer;

    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 4

    invoke-super {p0}, Lcom/youdo/view/UnZoomableOrScrollableWebView;->getWidth()I

    move-result v0

    invoke-super {p0}, Lcom/youdo/view/UnZoomableOrScrollableWebView;->getHeight()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "{ width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-float v0, v0

    iget v3, p0, Lcom/youdo/view/MraidView;->mDensity:F

    div-float/2addr v0, v3

    float-to-int v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "height: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-float v1, v1

    iget v2, p0, Lcom/youdo/view/MraidView;->mDensity:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/youdo/view/MraidView;->mViewState:Lorg/openad/constants/IOpenAdContants$ViewState;

    invoke-virtual {v0}, Lorg/openad/constants/IOpenAdContants$ViewState;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 2

    iget-object v0, p0, Lcom/youdo/view/MraidView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public hide(Lorg/openad/constants/IOpenAdContants$MessageSender;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/youdo/view/MraidView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "message_sender"

    invoke-virtual {p1}, Lorg/openad/constants/IOpenAdContants$MessageSender;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/youdo/view/MraidView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/youdo/view/MraidView;->hide()V

    goto :goto_0
.end method

.method public injectJavaScript(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/youdo/AdApplicationContext;->jsQueue:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/youdo/AdApplicationContext;->jsQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/youdo/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/youdo/view/MraidView$8;

    invoke-direct {v1, p0, p1}, Lcom/youdo/view/MraidView$8;-><init>(Lcom/youdo/view/MraidView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public isExpanded()Z
    .locals 2

    iget-object v0, p0, Lcom/youdo/view/MraidView;->mViewState:Lorg/openad/constants/IOpenAdContants$ViewState;

    sget-object v1, Lorg/openad/constants/IOpenAdContants$ViewState;->EXPANDED:Lorg/openad/constants/IOpenAdContants$ViewState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPageFinished()Z
    .locals 1

    iget-boolean v0, p0, Lcom/youdo/view/MraidView;->bPageFinished:Z

    return v0
.end method

.method public loadContent(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/youdo/view/MraidView;->loadContent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/io/StringBufferInputStream;

    invoke-direct {v0, p1}, Ljava/io/StringBufferInputStream;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/youdo/view/MraidView;->loadInputStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/youdo/view/MraidView;->loadInputStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/youdo/view/MraidView;->startAdAssetTimer()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/youdo/view/MraidView;->loadUrl(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/youdo/view/MraidView;->loadUrl(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public declared-synchronized loadUrl(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youdo/view/MraidView;->is:Ljava/io/InputStream;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youdo/view/MraidView;->bPageFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/youdo/view/MraidView;->u:Ljava/net/URL;

    iget-object v0, p0, Lcom/youdo/view/MraidView;->is:Ljava/io/InputStream;

    invoke-direct {p0, v0, p3, p1}, Lcom/youdo/view/MraidView;->loadInputStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "MraidView"

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-super {p0, p1}, Lcom/youdo/view/UnZoomableOrScrollableWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v0

    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "MraidView"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    iget-boolean v0, p0, Lcom/youdo/view/MraidView;->bGotLayoutParams:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/youdo/view/MraidView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, p0, Lcom/youdo/view/MraidView;->mInitLayoutHeight:I

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Lcom/youdo/view/MraidView;->mInitLayoutWidth:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youdo/view/MraidView;->bGotLayoutParams:Z

    :cond_0
    invoke-super {p0}, Lcom/youdo/view/UnZoomableOrScrollableWebView;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/youdo/view/MraidView;->isHoneyCombAndAbove()Z

    move-result v1

    const-string v2, "MraidView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Android sdk version is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_1

    const-string v0, "HoneyComb(3.0) or above"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", API version is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_2

    const-string v0, "11 or above"

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/youdo/view/MraidView;->useFullScreenCustomVideo:Z

    return-void

    :cond_1
    const-string/jumbo v0, "under HoneyComb(3.0)"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "under 11"

    goto :goto_1
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-string v0, "MraidView"

    const-string v1, "onCompletion ot the video"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/youdo/view/MraidView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/youdo/view/MraidView;->mUtilityController:Lcom/youdo/controller/MraidUtilityController;

    invoke-virtual {v0}, Lcom/youdo/controller/MraidUtilityController;->stopAllListeners()V

    invoke-super {p0}, Lcom/youdo/view/UnZoomableOrScrollableWebView;->onDetachedFromWindow()V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-string v0, "MraidView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError ot the video what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/youdo/view/MraidView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    const/4 v0, 0x0

    return v0
.end method

.method public onGlobalLayout()V
    .locals 3

    iget-boolean v0, p0, Lcom/youdo/view/MraidView;->bKeyboardOut:Z

    iget-boolean v1, p0, Lcom/youdo/view/MraidView;->bKeyboardOut:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/youdo/view/MraidView;->mContentViewHeight:I

    if-ltz v1, :cond_0

    invoke-direct {p0}, Lcom/youdo/view/MraidView;->getContentViewHeight()I

    move-result v1

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/youdo/view/MraidView;->mContentViewHeight:I

    invoke-direct {p0}, Lcom/youdo/view/MraidView;->getContentViewHeight()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    const-string/jumbo v1, "window.mraidview.fireChangeEvent({ keyboardState: true});"

    invoke-virtual {p0, v1}, Lcom/youdo/view/MraidView;->injectJavaScript(Ljava/lang/String;)V

    :cond_0
    iget-boolean v1, p0, Lcom/youdo/view/MraidView;->bKeyboardOut:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/youdo/view/MraidView;->mContentViewHeight:I

    if-ltz v1, :cond_1

    invoke-direct {p0}, Lcom/youdo/view/MraidView;->getContentViewHeight()I

    move-result v1

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/youdo/view/MraidView;->mContentViewHeight:I

    invoke-direct {p0}, Lcom/youdo/view/MraidView;->getContentViewHeight()I

    move-result v2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x0

    const-string/jumbo v1, "window.mraidview.fireChangeEvent({ keyboardState: false});"

    invoke-virtual {p0, v1}, Lcom/youdo/view/MraidView;->injectJavaScript(Ljava/lang/String;)V

    :cond_1
    iget v1, p0, Lcom/youdo/view/MraidView;->mContentViewHeight:I

    if-gez v1, :cond_2

    invoke-direct {p0}, Lcom/youdo/view/MraidView;->getContentViewHeight()I

    move-result v1

    iput v1, p0, Lcom/youdo/view/MraidView;->mContentViewHeight:I

    :cond_2
    iput-boolean v0, p0, Lcom/youdo/view/MraidView;->bKeyboardOut:Z

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    iput p2, p0, Lcom/youdo/view/MraidView;->mDefaultPositionX:I

    iput p3, p0, Lcom/youdo/view/MraidView;->mDefaultPositionY:I

    iget v0, p0, Lcom/youdo/view/MraidView;->mDefaultPositionY:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/youdo/view/MraidView;->mDefaultPositionX:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Lcom/youdo/view/MraidView;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/youdo/view/MraidView;->mDefaultPositionX:I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/youdo/view/MraidView;->mDefaultPositionY:I

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-virtual {p0}, Lcom/youdo/view/MraidView;->invalidate()V

    invoke-super {p0, p1, p2}, Lcom/youdo/view/UnZoomableOrScrollableWebView;->onMeasure(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/youdo/view/UnZoomableOrScrollableWebView;->onSizeChanged(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/youdo/view/UnZoomableOrScrollableWebView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/youdo/view/UnZoomableOrScrollableWebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/youdo/view/MraidView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/youdo/view/MraidView;->requestFocus()Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public open(Ljava/lang/String;ZZZ)V
    .locals 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/youdo/view/MraidView;->doOpen(Ljava/lang/String;ZZZ)V

    :goto_0
    return-void

    :cond_0
    iget-object v6, p0, Lcom/youdo/view/MraidView;->mainLoopHandler:Landroid/os/Handler;

    new-instance v0, Lcom/youdo/view/MraidView$12;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/youdo/view/MraidView$12;-><init>(Lcom/youdo/view/MraidView;Ljava/lang/String;ZZZ)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public openMap(Ljava/lang/String;Z)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "View"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opening Map Url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youdo/controller/util/MraidUtils;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_1

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/youdo/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/youdo/view/MraidView;->mapAPIKey:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/youdo/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Error: no Google Maps API Key provided for embedded map"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public playAudio(Ljava/lang/String;ZZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    new-instance v0, Lcom/youdo/controller/MraidController$PlayerProperties;

    invoke-direct {v0}, Lcom/youdo/controller/MraidController$PlayerProperties;-><init>()V

    const/4 v1, 0x0

    move v2, p2

    move v3, p3

    move v4, p5

    move v5, p4

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/youdo/controller/MraidController$PlayerProperties;->setProperties(ZZZZZLjava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "action"

    sget-object v3, Lcom/youdo/view/MraidView$ACTION;->PLAY_AUDIO:Lcom/youdo/view/MraidView$ACTION;

    invoke-virtual {v3}, Lcom/youdo/view/MraidView$ACTION;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "expand_url"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "player_properties"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0}, Lcom/youdo/controller/MraidController$PlayerProperties;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/youdo/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/youdo/view/MraidActionHandler;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/youdo/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/youdo/view/MraidView;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3f0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/youdo/view/MraidView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public playAudioImpl(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "player_properties"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/youdo/controller/MraidController$PlayerProperties;

    const-string v1, "expand_url"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, -0x80000000

    invoke-virtual {p0, v2}, Lcom/youdo/view/MraidView;->getPlayer(I)Lcom/youdo/controller/util/MraidPlayer;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/youdo/controller/util/MraidPlayer;->setPlayData(Lcom/youdo/controller/MraidController$PlayerProperties;Ljava/lang/String;)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Lcom/youdo/controller/util/MraidPlayer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/youdo/view/MraidView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v2}, Lcom/youdo/controller/util/MraidPlayer;->playAudio()V

    return-void
.end method

.method public playVideo(Ljava/lang/String;ZZZZLcom/youdo/controller/MraidController$Dimensions;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/youdo/view/MraidView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ef

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    new-instance v0, Lcom/youdo/controller/MraidController$PlayerProperties;

    invoke-direct {v0}, Lcom/youdo/controller/MraidController$PlayerProperties;-><init>()V

    const/4 v2, 0x1

    const/4 v4, 0x0

    move v1, p2

    move v3, p4

    move v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Lcom/youdo/controller/MraidController$PlayerProperties;->setProperties(ZZZZZLjava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "expand_url"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "action"

    sget-object v3, Lcom/youdo/view/MraidView$ACTION;->PLAY_VIDEO:Lcom/youdo/view/MraidView$ACTION;

    invoke-virtual {v3}, Lcom/youdo/view/MraidView$ACTION;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "player_properties"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz p6, :cond_0

    const-string v0, "expand_dimensions"

    invoke-virtual {v1, v0, p6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    invoke-virtual {v8, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/youdo/view/MraidView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public playVideoImpl(Landroid/os/Bundle;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/youdo/view/MraidView;->isVideoDisplayed:Ljava/lang/Boolean;

    const-string v0, "player_properties"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/youdo/controller/MraidController$PlayerProperties;

    iput-boolean v6, v0, Lcom/youdo/controller/MraidController$PlayerProperties;->showControl:Z

    iput-boolean v1, v0, Lcom/youdo/controller/MraidController$PlayerProperties;->autoPlay:Z

    iput-boolean v6, v0, Lcom/youdo/controller/MraidController$PlayerProperties;->doLoop:Z

    const-string v1, "fullscreen"

    iput-object v1, v0, Lcom/youdo/controller/MraidController$PlayerProperties;->startStyle:Ljava/lang/String;

    const-string v1, "exit"

    iput-object v1, v0, Lcom/youdo/controller/MraidController$PlayerProperties;->stopStyle:Ljava/lang/String;

    iput-boolean v6, v0, Lcom/youdo/controller/MraidController$PlayerProperties;->inline:Z

    const-string v1, "expand_dimensions"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/youdo/controller/MraidController$Dimensions;

    new-instance v2, Lcom/youdo/controller/MraidController$Dimensions;

    invoke-direct {v2}, Lcom/youdo/controller/MraidController$Dimensions;-><init>()V

    iput v6, v2, Lcom/youdo/controller/MraidController$Dimensions;->y:I

    iput v6, v2, Lcom/youdo/controller/MraidController$Dimensions;->x:I

    invoke-virtual {p0}, Lcom/youdo/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lorg/openad/common/util/Utils;->getScreenWidth(Landroid/app/Activity;)I

    move-result v1

    iput v1, v2, Lcom/youdo/controller/MraidController$Dimensions;->width:I

    invoke-virtual {p0}, Lcom/youdo/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lorg/openad/common/util/Utils;->getScreenHeight(Landroid/app/Activity;)I

    move-result v1

    iput v1, v2, Lcom/youdo/controller/MraidController$Dimensions;->height:I

    const-string v1, "expand_url"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/youdo/view/MraidView;->mAdApplicationContext:Lcom/youdo/ad/interfaces/IAdApplicationContext;

    invoke-interface {v3}, Lcom/youdo/ad/interfaces/IAdApplicationContext;->getXAdSDKResource()Lcom/youdo/XAdSDKResource;

    move-result-object v3

    iget v3, v3, Lcom/youdo/XAdSDKResource;->video_close:I

    invoke-virtual {p0, v3}, Lcom/youdo/view/MraidView;->getPlayer(I)Lcom/youdo/controller/util/MraidPlayer;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/youdo/controller/util/MraidPlayer;->setPlayData(Lcom/youdo/controller/MraidController$PlayerProperties;Ljava/lang/String;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/youdo/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xd

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget v4, v2, Lcom/youdo/controller/MraidController$Dimensions;->x:I

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v4, v2, Lcom/youdo/controller/MraidController$Dimensions;->y:I

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v3, v0}, Lcom/youdo/controller/util/MraidPlayer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/youdo/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v0, -0x10ff0100

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    new-instance v0, Lcom/youdo/view/MraidView$10;

    invoke-direct {v0, p0}, Lcom/youdo/view/MraidView$10;-><init>(Lcom/youdo/view/MraidView;)V

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/16 v0, 0x65

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setId(I)V

    iget v0, v2, Lcom/youdo/controller/MraidController$Dimensions;->x:I

    iget v2, v2, Lcom/youdo/controller/MraidController$Dimensions;->y:I

    invoke-virtual {v4, v0, v2, v6, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/youdo/view/MraidView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v2, 0x1020002

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/youdo/view/MraidView$11;

    invoke-direct {v0, p0}, Lcom/youdo/view/MraidView$11;-><init>(Lcom/youdo/view/MraidView;)V

    invoke-virtual {v3, v0}, Lcom/youdo/controller/util/MraidPlayer;->setListener(Lcom/youdo/controller/util/MraidPlayerListener;)V

    invoke-virtual {v3}, Lcom/youdo/controller/util/MraidPlayer;->playVideo()V

    return-void
.end method

.method public raiseError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/youdo/view/MraidView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "message"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "action"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/youdo/view/MraidView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public registerProtocol(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/youdo/view/MraidView;->registeredProtocols:Ljava/util/HashSet;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youdo/view/MraidView;->mListener:Lcom/youdo/view/MraidView$MraidViewListener;

    return-void
.end method

.method public resetContents()V
    .locals 4

    invoke-virtual {p0}, Lcom/youdo/view/MraidView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/youdo/view/MraidView;->getRootView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/youdo/view/MraidView;->getRootView()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/youdo/view/MraidView;->resetLayout()V

    iget v0, p0, Lcom/youdo/view/MraidView;->mIndex:I

    invoke-virtual {v3, p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v3}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public resize(II)V
    .locals 7

    const/4 v3, 0x0

    sget-object v0, Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;->TOP_RIGHT:Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;

    invoke-virtual {v0}, Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;->getValue()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/youdo/view/MraidView;->resize(IIIILjava/lang/String;Z)V

    return-void
.end method

.method public resize(IIIILjava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lcom/youdo/view/MraidView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "resize_width"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "resize_height"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "resize_offset_x"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "resize_offset_y"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "resize_custom_close_position"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "resize_allow_off_screen"

    invoke-virtual {v1, v2, p6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/youdo/view/MraidView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .locals 2

    const-string v0, "AD_PATH"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youdo/view/MraidView;->mLocalFilePath:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youdo/view/MraidView;->mLocalFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_mraid_current"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/youdo/view/UnZoomableOrScrollableWebView;->loadUrl(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .locals 2

    const-string v0, "AD_PATH"

    iget-object v1, p0, Lcom/youdo/view/MraidView;->mLocalFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public setAdsDefaultHeight(F)V
    .locals 0

    iput p1, p0, Lcom/youdo/view/MraidView;->defaultHeight:F

    return-void
.end method

.method public setAdsDefaultWidth(F)V
    .locals 0

    iput p1, p0, Lcom/youdo/view/MraidView;->defaultWidth:F

    return-void
.end method

.method public setEmebeddedBrowserOpen(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/youdo/view/MraidView;->embeddedBrowserOpened:Z

    return-void
.end method

.method public setListener(Lcom/youdo/view/MraidView$MraidViewListener;)V
    .locals 0

    iput-object p1, p0, Lcom/youdo/view/MraidView;->mListener:Lcom/youdo/view/MraidView$MraidViewListener;

    return-void
.end method

.method public setMapAPIKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/youdo/view/MraidView;->mapAPIKey:Ljava/lang/String;

    return-void
.end method

.method public setMaxSize(II)V
    .locals 1

    iget-object v0, p0, Lcom/youdo/view/MraidView;->mUtilityController:Lcom/youdo/controller/MraidUtilityController;

    invoke-virtual {v0, p1, p2}, Lcom/youdo/controller/MraidUtilityController;->setMaxSize(II)V

    return-void
.end method

.method public setVideoAdDuration(D)V
    .locals 1

    iget-object v0, p0, Lcom/youdo/view/MraidView;->mUtilityController:Lcom/youdo/controller/MraidUtilityController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/view/MraidView;->mUtilityController:Lcom/youdo/controller/MraidUtilityController;

    invoke-virtual {v0, p1, p2}, Lcom/youdo/controller/MraidUtilityController;->setVideoAdDuration(D)V

    :cond_0
    return-void
.end method

.method public setVideoAdPlayheadTime(D)V
    .locals 1

    iget-object v0, p0, Lcom/youdo/view/MraidView;->mUtilityController:Lcom/youdo/controller/MraidUtilityController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/view/MraidView;->mUtilityController:Lcom/youdo/controller/MraidUtilityController;

    invoke-virtual {v0, p1, p2}, Lcom/youdo/controller/MraidUtilityController;->setVideoAdPlayheadTime(D)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    iget-object v0, p0, Lcom/youdo/view/MraidView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public show(Lorg/openad/constants/IOpenAdContants$MessageSender;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/youdo/view/MraidView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "message_sender"

    invoke-virtual {p1}, Lorg/openad/constants/IOpenAdContants$MessageSender;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/youdo/view/MraidView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/youdo/view/MraidView;->show()V

    goto :goto_0
.end method
