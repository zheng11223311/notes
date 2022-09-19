.class public Lcom/youdo/controller/util/MraidPlayer;
.super Landroid/widget/VideoView;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# static fields
.field private static LOG_TAG:Ljava/lang/String;

.field private static TRANSIENT_TEXT:Ljava/lang/String;


# instance fields
.field private aManager:Landroid/media/AudioManager;

.field private contentURL:Ljava/lang/String;

.field private isPrepared:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isReleased:Z

.field private listener:Lcom/youdo/controller/util/MraidPlayerListener;

.field private mCloseButton:Landroid/widget/ImageButton;

.field private mCloseButtonResId:I

.field private mForceHeight:I

.field private mForceWidth:I

.field private mTimer:Lorg/openad/common/util/XYDTimer;

.field private mutedVolume:I

.field private playProperties:Lcom/youdo/controller/MraidController$PlayerProperties;

.field private transientLayout:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "loading......"

    sput-object v0, Lcom/youdo/controller/util/MraidPlayer;->TRANSIENT_TEXT:Ljava/lang/String;

    const-string v0, "MraidPlayer"

    sput-object v0, Lcom/youdo/controller/util/MraidPlayer;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/youdo/controller/util/MraidPlayer;->isPrepared:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/youdo/controller/util/MraidPlayer;->mCloseButtonResId:I

    iput v1, p0, Lcom/youdo/controller/util/MraidPlayer;->mForceHeight:I

    iput v1, p0, Lcom/youdo/controller/util/MraidPlayer;->mForceWidth:I

    invoke-virtual {p0}, Lcom/youdo/controller/util/MraidPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/youdo/controller/util/MraidPlayer;->aManager:Landroid/media/AudioManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/youdo/controller/util/MraidPlayer;-><init>(Landroid/content/Context;)V

    iput p2, p0, Lcom/youdo/controller/util/MraidPlayer;->mCloseButtonResId:I

    return-void
.end method

.method static synthetic access$000(Lcom/youdo/controller/util/MraidPlayer;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/youdo/controller/util/MraidPlayer;->isPrepared:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private stopTimer()V
    .locals 1

    iget-object v0, p0, Lcom/youdo/controller/util/MraidPlayer;->mTimer:Lorg/openad/common/util/XYDTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/controller/util/MraidPlayer;->mTimer:Lorg/openad/common/util/XYDTimer;

    invoke-virtual {v0}, Lorg/openad/common/util/XYDTimer;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youdo/controller/util/MraidPlayer;->mTimer:Lorg/openad/common/util/XYDTimer;

    :cond_0
    return-void
.end method


# virtual methods
.method addCloseButton()V
    .locals 5

    const/4 v2, -0x2

    const/4 v4, 0x0

    iget v0, p0, Lcom/youdo/controller/util/MraidPlayer;->mCloseButtonResId:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/youdo/controller/util/MraidPlayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v2, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/youdo/controller/util/MraidPlayer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/youdo/controller/util/MraidPlayer;->mCloseButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/youdo/controller/util/MraidPlayer;->mCloseButton:Landroid/widget/ImageButton;

    iget v3, p0, Lcom/youdo/controller/util/MraidPlayer;->mCloseButtonResId:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v2, p0, Lcom/youdo/controller/util/MraidPlayer;->mCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/youdo/controller/util/MraidPlayer;->mCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/ImageButton;->setPadding(IIII)V

    iget-object v2, p0, Lcom/youdo/controller/util/MraidPlayer;->mCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/youdo/controller/util/MraidPlayer;->mCloseButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/youdo/controller/util/MraidPlayer$2;

    invoke-direct {v2, p0}, Lcom/youdo/controller/util/MraidPlayer$2;-><init>(Lcom/youdo/controller/util/MraidPlayer;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/youdo/controller/util/MraidPlayer;->mCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method addTransientMessage()V
    .locals 3

    const/4 v2, -0x2

    iget-object v0, p0, Lcom/youdo/controller/util/MraidPlayer;->playProperties:Lcom/youdo/controller/MraidController$PlayerProperties;

    iget-boolean v0, v0, Lcom/youdo/controller/MraidController$PlayerProperties;->inline:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/youdo/controller/util/MraidPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/youdo/controller/util/MraidPlayer;->transientLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/youdo/controller/util/MraidPlayer;->transientLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/youdo/controller/util/MraidPlayer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/youdo/controller/util/MraidPlayer;->transientLayout:Landroid/widget/RelativeLayout;

    const/high16 v1, -0x30000000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/youdo/controller/util/MraidPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/youdo/controller/util/MraidPlayer;->TRANSIENT_TEXT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/youdo/controller/util/MraidPlayer;->transientLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/youdo/controller/util/MraidPlayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/youdo/controller/util/MraidPlayer;->transientLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method clearCloseButton()V
    .locals 2

    iget-object v0, p0, Lcom/youdo/controller/util/MraidPlayer;->mCloseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/youdo/controller/util/MraidPlayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/youdo/controller/util/MraidPlayer;->mCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method clearTransientMessage()V
    .locals 2

    iget-object v0, p0, Lcom/youdo/controller/util/MraidPlayer;->transientLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/youdo/controller/util/MraidPlayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/youdo/controller/util/MraidPlayer;->transientLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method displayControl()V
    .locals 2

    iget-object v0, p0, Lcom/youdo/controller/util/MraidPlayer;->playProperties:Lcom/youdo/controller/MraidController$PlayerProperties;

    invoke-virtual {v0}, Lcom/youdo/controller/MraidController$PlayerProperties;->showControl()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/MediaController;

    invoke-virtual {p0}, Lcom/youdo/controller/util/MraidPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/youdo/controller/util/MraidPlayer;->setMediaController(Landroid/widget/MediaController;)V

    invoke-virtual {v0, p0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method loadContent()V
    .locals 3

    iget-object v0, p0, Lcom/youdo/controller/util/MraidPlayer;->isPrepared:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0}, Lcom/youdo/controller/util/MraidPlayer;->stopTimer()V

    new-instance v0, Lorg/openad/common/util/XYDTimer;

    const/16 v1, 0xa

    new-instance v2, Lcom/youdo/controller/util/MraidPlayer$1;

    invoke-direct {v2, p0}, Lcom/youdo/controller/util/MraidPlayer$1;-><init>(Lcom/youdo/controller/util/MraidPlayer;)V

    invoke-direct {v0, v1, v2}, Lorg/openad/common/util/XYDTimer;-><init>(ILorg/openad/common/util/XYDTimer$EventHandler;)V

    iput-object v0, p0, Lcom/youdo/controller/util/MraidPlayer;->mTimer:Lorg/openad/common/util/XYDTimer;

    iget-object v0, p0, Lcom/youdo/controller/util/MraidPlayer;->mTimer:Lorg/openad/common/util/XYDTimer;

    invoke-virtual {v0}, Lorg/openad/common/util/XYDTimer;->start()V

    iget-object v0, p0, Lcom/youdo/controller/util/MraidPlayer;->contentURL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youdo/controller/util/MraidPlayer;->contentURL:Ljava/lang/String;

    iget-object v0, p0, Lcom/youdo/controller/util/MraidPlayer;->contentURL:Ljava/lang/String;

    invoke-static {v0}, Lcom/youdo/controller/util/MraidUtils;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youdo/controller/util/MraidPlayer;->contentURL:Ljava/lang/String;

    iget-object v0, p0, Lcom/youdo/controller/util/MraidPlayer;->contentURL:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youdo/controller/util/MraidPlayer;->listener:Lcom/youdo/controller/util/MraidPlayerListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/youdo/controller/util/MraidPlayer;->removeView()V

    iget-object v0, p0, Lcom/youdo/controller/util/MraidPlayer;->listener:Lcom/youdo/controller/util/MraidPlayerListener;

    invoke-interface {v0}, Lcom/youdo/controller/util/MraidPlayerListener;->onError()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/youdo/controller/util/MraidPlayer;->contentURL:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/youdo/controller/util/MraidPlayer;->setVideoURI(Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/youdo/controller/util/MraidPlayer;->displayControl()V

    invoke-virtual {p0}, Lcom/youdo/controller/util/MraidPlayer;->startContent()V

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object v0, p0, Lcom/youdo/controller/util/MraidPlayer;->playProperties:Lcom/youdo/controller/MraidController$PlayerProperties;

    invoke-virtual {v0}, Lcom/youdo/controller/MraidController$PlayerProperties;->doLoop()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/youdo/controller/util/MraidPlayer;->start()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/youdo/controller/util/MraidPlayer;->playProperties:Lcom/youdo/controller/MraidController$PlayerProperties;

    invoke-virtual {v0}, Lcom/youdo/controller/MraidController$PlayerProperties;->exitOnComplete()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/youdo/controller/util/MraidPlayer;->playProperties:Lcom/youdo/controller/MraidController$PlayerProperties;

    iget-boolean v0, v0, Lcom/youdo/controller/MraidController$PlayerProperties;->inline:Z

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/youdo/controller/util/MraidPlayer;->releasePlayer()V

    goto :goto_0
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3

    sget-object v0, Lcom/youdo/controller/util/MraidPlayer;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Player error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/youdo/controller/util/MraidPlayer;->stopTimer()V

    invoke-virtual {p0}, Lcom/youdo/controller/util/MraidPlayer;->clearTransientMessage()V

    invoke-virtual {p0}, Lcom/youdo/controller/util/MraidPlayer;->clearCloseButton()V

    invoke-virtual {p0}, Lcom/youdo/controller/util/MraidPlayer;->removeView()V

    iget-object v0, p0, Lcom/youdo/controller/util/MraidPlayer;->listener:Lcom/youdo/controller/util/MraidPlayerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/controller/util/MraidPlayer;->listener:Lcom/youdo/controller/util/MraidPlayerListener;

    invoke-interface {v0}, Lcom/youdo/controller/util/MraidPlayerListener;->onError()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object v0, p0, Lcom/youdo/controller/util/MraidPlayer;->isPrepared:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0}, Lcom/youdo/controller/util/MraidPlayer;->stopTimer()V

    invoke-virtual {p0}, Lcom/youdo/controller/util/MraidPlayer;->clearTransientMessage()V

    iget-object v0, p0, Lcom/youdo/controller/util/MraidPlayer;->listener:Lcom/youdo/controller/util/MraidPlayerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/controller/util/MraidPlayer;->listener:Lcom/youdo/controller/util/MraidPlayerListener;

    invoke-interface {v0}, Lcom/youdo/controller/util/MraidPlayerListener;->onPrepared()V

    :cond_0
    return-void
.end method

.method public playAudio()V
    .locals 0

    invoke-virtual {p0}, Lcom/youdo/controller/util/MraidPlayer;->loadContent()V

    return-void
.end method

.method public playVideo()V
    .locals 4

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/youdo/controller/util/MraidPlayer;->playProperties:Lcom/youdo/controller/MraidController$PlayerProperties;

    invoke-virtual {v0}, Lcom/youdo/controller/MraidController$PlayerProperties;->doMute()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/controller/util/MraidPlayer;->aManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/youdo/controller/util/MraidPlayer;->mutedVolume:I

    iget-object v0, p0, Lcom/youdo/controller/util/MraidPlayer;->aManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_0
    invoke-virtual {p0}, Lcom/youdo/controller/util/MraidPlayer;->loadContent()V

    return-void
.end method

.method public releasePlayer()V
    .locals 1

    iget-boolean v0, p0, Lcom/youdo/controller/util/MraidPlayer;->isReleased:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youdo/controller/util/MraidPlayer;->isReleased:Z

    invoke-virtual {p0}, Lcom/youdo/controller/util/MraidPlayer;->stopPlayback()V

    invoke-virtual {p0}, Lcom/youdo/controller/util/MraidPlayer;->removeView()V

    iget-object v0, p0, Lcom/youdo/controller/util/MraidPlayer;->playProperties:Lcom/youdo/controller/MraidController$PlayerProperties;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/youdo/controller/util/MraidPlayer;->playProperties:Lcom/youdo/controller/MraidController$PlayerProperties;

    invoke-virtual {v0}, Lcom/youdo/controller/MraidController$PlayerProperties;->doMute()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/youdo/controller/util/MraidPlayer;->unMute()V

    :cond_2
    iget-object v0, p0, Lcom/youdo/controller/util/MraidPlayer;->listener:Lcom/youdo/controller/util/MraidPlayerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/controller/util/MraidPlayer;->listener:Lcom/youdo/controller/util/MraidPlayerListener;

    invoke-interface {v0}, Lcom/youdo/controller/util/MraidPlayerListener;->onComplete()V

    goto :goto_0
.end method

.method removeView()V
    .locals 1

    invoke-virtual {p0}, Lcom/youdo/controller/util/MraidPlayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setDimensions(II)V
    .locals 0

    iput p2, p0, Lcom/youdo/controller/util/MraidPlayer;->mForceHeight:I

    iput p1, p0, Lcom/youdo/controller/util/MraidPlayer;->mForceWidth:I

    return-void
.end method

.method public setListener(Lcom/youdo/controller/util/MraidPlayerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/youdo/controller/util/MraidPlayer;->listener:Lcom/youdo/controller/util/MraidPlayerListener;

    return-void
.end method

.method public setPlayData(Lcom/youdo/controller/MraidController$PlayerProperties;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youdo/controller/util/MraidPlayer;->isReleased:Z

    iput-object p1, p0, Lcom/youdo/controller/util/MraidPlayer;->playProperties:Lcom/youdo/controller/MraidController$PlayerProperties;

    iput-object p2, p0, Lcom/youdo/controller/util/MraidPlayer;->contentURL:Ljava/lang/String;

    return-void
.end method

.method startContent()V
    .locals 1

    invoke-virtual {p0, p0}, Lcom/youdo/controller/util/MraidPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    invoke-virtual {p0, p0}, Lcom/youdo/controller/util/MraidPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    invoke-virtual {p0, p0}, Lcom/youdo/controller/util/MraidPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/youdo/controller/util/MraidPlayer;->playProperties:Lcom/youdo/controller/MraidController$PlayerProperties;

    iget-boolean v0, v0, Lcom/youdo/controller/MraidController$PlayerProperties;->inline:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/youdo/controller/util/MraidPlayer;->addTransientMessage()V

    :cond_0
    invoke-virtual {p0}, Lcom/youdo/controller/util/MraidPlayer;->addCloseButton()V

    iget-object v0, p0, Lcom/youdo/controller/util/MraidPlayer;->playProperties:Lcom/youdo/controller/MraidController$PlayerProperties;

    invoke-virtual {v0}, Lcom/youdo/controller/MraidController$PlayerProperties;->isAutoPlay()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/youdo/controller/util/MraidPlayer;->start()V

    :cond_1
    return-void
.end method

.method unMute()V
    .locals 4

    iget-object v0, p0, Lcom/youdo/controller/util/MraidPlayer;->aManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    iget v2, p0, Lcom/youdo/controller/util/MraidPlayer;->mutedVolume:I

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void
.end method
