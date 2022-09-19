.class public Lcom/youku/gamecenter/GameDialog;
.super Ljava/lang/Object;
.source "GameDialog.java"

# interfaces
.implements Lcom/youku/gamecenter/services/NetService;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/GameDialog$DownloadClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "gamecenter"

.field private static final TIME_OUT:I = 0x2710

.field private static mHandler:Landroid/os/Handler;


# instance fields
.field mAppId:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mDialog:Lcom/youku/gamecenter/widgets/YoukuGameDialog;

.field mDialogInfo:Lcom/youku/gamecenter/data/GameDialogInfo;

.field mDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

.field private mIsCanceled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/youku/gamecenter/GameDialog;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/youku/gamecenter/GameDialog;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    .line 28
    iput-object v0, p0, Lcom/youku/gamecenter/GameDialog;->mDialogInfo:Lcom/youku/gamecenter/data/GameDialogInfo;

    .line 29
    iput-object v0, p0, Lcom/youku/gamecenter/GameDialog;->mDialog:Lcom/youku/gamecenter/widgets/YoukuGameDialog;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/gamecenter/GameDialog;->mIsCanceled:Z

    .line 39
    new-instance v0, Lcom/youku/gamecenter/data/GameInfo;

    invoke-direct {v0}, Lcom/youku/gamecenter/data/GameInfo;-><init>()V

    iput-object v0, p0, Lcom/youku/gamecenter/GameDialog;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    .line 40
    iput-object p1, p0, Lcom/youku/gamecenter/GameDialog;->mContext:Landroid/content/Context;

    .line 41
    iget-object v0, p0, Lcom/youku/gamecenter/GameDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/youku/gamecenter/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/youku/gamecenter/download/DownloadManager;

    .line 44
    return-void
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/youku/gamecenter/GameDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/gamecenter/GameDialog;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/GameDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/GameDialog;->loadImageFromUrl(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/youku/gamecenter/GameDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/GameDialog;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/youku/gamecenter/GameDialog;->mIsCanceled:Z

    return v0
.end method

.method static synthetic access$500(Lcom/youku/gamecenter/GameDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/GameDialog;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/youku/gamecenter/GameDialog;->sendTrack()V

    return-void
.end method

.method static synthetic access$600(Lcom/youku/gamecenter/GameDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/GameDialog;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/youku/gamecenter/GameDialog;->dismiss()V

    return-void
.end method

.method private dismiss()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/youku/gamecenter/GameDialog;->mDialog:Lcom/youku/gamecenter/widgets/YoukuGameDialog;

    invoke-virtual {v0}, Lcom/youku/gamecenter/widgets/YoukuGameDialog;->dismiss()V

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/gamecenter/GameDialog;->mDialog:Lcom/youku/gamecenter/widgets/YoukuGameDialog;

    .line 214
    return-void
.end method

.method private loadImage(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 89
    new-instance v0, Lcom/youku/gamecenter/GameDialog$1;

    invoke-direct {v0, p0, p1}, Lcom/youku/gamecenter/GameDialog$1;-><init>(Lcom/youku/gamecenter/GameDialog;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/GameDialog$1;->execute([Ljava/lang/Object;)Lcom/youku/gamecenter/services/YoukuAsyncTask;

    .line 131
    return-void
.end method

.method private loadImageFromUrl(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 135
    const/4 v3, 0x0

    .line 136
    .local v3, "i":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 139
    .local v2, "d":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 143
    .local v4, "u":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/io/InputStream;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 159
    .end local v4    # "u":Ljava/net/URL;
    :goto_0
    :try_start_1
    const-string/jumbo v5, "src"

    invoke-static {v3, v5}, Landroid/graphics/drawable/BitmapDrawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 161
    .local v1, "bitDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-nez v1, :cond_0

    .line 162
    const/4 v5, 0x0

    .line 181
    .end local v1    # "bitDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :goto_1
    return-object v5

    .line 163
    .restart local v1    # "bitDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    iput-object v1, p0, Lcom/youku/gamecenter/GameDialog;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 164
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 165
    if-eqz v2, :cond_1

    .end local v1    # "bitDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    :goto_2
    move-object v5, v2

    .line 181
    goto :goto_1

    .line 175
    :catchall_0
    move-exception v5

    throw v5

    .line 174
    :catch_0
    move-exception v5

    goto :goto_2

    .line 144
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method private release()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method private sendTrack()V
    .locals 4

    .prologue
    .line 217
    iget-object v2, p0, Lcom/youku/gamecenter/GameDialog;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/youku/gamecenter/services/URLContainer;->GAME_POP_STATISTICS:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/youku/gamecenter/statistics/GameTrack;->setBaseParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, "url":Ljava/lang/String;
    new-instance v0, Lcom/youku/gamecenter/statistics/GameStatisticsTask;

    iget-object v2, p0, Lcom/youku/gamecenter/GameDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/youku/gamecenter/statistics/GameStatisticsTask;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 220
    .local v0, "statistics":Lcom/youku/gamecenter/statistics/GameStatisticsTask;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/youku/gamecenter/statistics/GameStatisticsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 221
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/gamecenter/GameDialog;->mIsCanceled:Z

    .line 69
    iget-object v0, p0, Lcom/youku/gamecenter/GameDialog;->mDialog:Lcom/youku/gamecenter/widgets/YoukuGameDialog;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/youku/gamecenter/GameDialog;->mDialog:Lcom/youku/gamecenter/widgets/YoukuGameDialog;

    invoke-virtual {v0}, Lcom/youku/gamecenter/widgets/YoukuGameDialog;->dismiss()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/gamecenter/GameDialog;->mDialog:Lcom/youku/gamecenter/widgets/YoukuGameDialog;

    .line 73
    :cond_0
    return-void
.end method

.method public isDismissed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 76
    iget-object v1, p0, Lcom/youku/gamecenter/GameDialog;->mDialog:Lcom/youku/gamecenter/widgets/YoukuGameDialog;

    if-nez v1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/youku/gamecenter/GameDialog;->mDialog:Lcom/youku/gamecenter/widgets/YoukuGameDialog;

    invoke-virtual {v1}, Lcom/youku/gamecenter/widgets/YoukuGameDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/youku/gamecenter/GameDialog;->release()V

    .line 188
    return-void
.end method

.method public show(Lcom/youku/gamecenter/data/GameDialogInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/youku/gamecenter/data/GameDialogInfo;

    .prologue
    .line 47
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/youku/gamecenter/data/GameDialogInfo;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    :cond_0
    const-string v0, "gamecenter"

    const-string v1, "GameDialogInfo is not invalid "

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :goto_0
    return-void

    .line 51
    :cond_1
    iput-object p1, p0, Lcom/youku/gamecenter/GameDialog;->mDialogInfo:Lcom/youku/gamecenter/data/GameDialogInfo;

    .line 52
    iget-object v0, p0, Lcom/youku/gamecenter/GameDialog;->mDialog:Lcom/youku/gamecenter/widgets/YoukuGameDialog;

    if-eqz v0, :cond_2

    .line 53
    iget-object v0, p0, Lcom/youku/gamecenter/GameDialog;->mDialog:Lcom/youku/gamecenter/widgets/YoukuGameDialog;

    invoke-virtual {v0}, Lcom/youku/gamecenter/widgets/YoukuGameDialog;->dismiss()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/gamecenter/GameDialog;->mDialog:Lcom/youku/gamecenter/widgets/YoukuGameDialog;

    .line 56
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/gamecenter/GameDialog;->mIsCanceled:Z

    .line 63
    const-string v0, "gamecenter"

    const-string/jumbo v1, "start to show dialog"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/youku/gamecenter/GameDialog;->mDialogInfo:Lcom/youku/gamecenter/data/GameDialogInfo;

    iget-object v0, v0, Lcom/youku/gamecenter/data/GameDialogInfo;->mPic_link:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/GameDialog;->loadImage(Ljava/lang/String;)V

    goto :goto_0
.end method
