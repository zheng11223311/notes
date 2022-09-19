.class public Lio/rong/imkit/widget/provider/LocationInputProvider;
.super Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;
.source "LocationInputProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/widget/provider/LocationInputProvider$DownloadRunnable;
    }
.end annotation


# instance fields
.field mCurrentMessage:Lio/rong/imlib/model/Message;


# direct methods
.method public constructor <init>(Lio/rong/imkit/RongContext;)V
    .locals 0
    .param p1, "context"    # Lio/rong/imkit/RongContext;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;-><init>(Lio/rong/imkit/RongContext;)V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lio/rong/imkit/widget/provider/LocationInputProvider;Landroid/content/Context;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lio/rong/imkit/widget/provider/LocationInputProvider;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lio/rong/imkit/widget/provider/LocationInputProvider;->obtainImageUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private obtainImageUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 168
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 169
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, "path":Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 171
    .local v2, "uri":Landroid/net/Uri;
    return-object v2
.end method


# virtual methods
.method public getCurrentMessage()Lio/rong/imlib/model/Message;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lio/rong/imkit/widget/provider/LocationInputProvider;->mCurrentMessage:Lio/rong/imlib/model/Message;

    return-object v0
.end method

.method public obtainPluginDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lio/rong/imkit/R$drawable;->rc_ic_location:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public obtainPluginTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    sget v0, Lio/rong/imkit/R$string;->rc_plugins_location:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onDetached()V
    .locals 0

    .prologue
    .line 93
    invoke-super {p0}, Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;->onDetached()V

    .line 94
    return-void
.end method

.method public onPluginClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 55
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getLocationProvider()Lio/rong/imkit/RongIM$LocationProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getLocationProvider()Lio/rong/imkit/RongIM$LocationProvider;

    move-result-object v0

    invoke-virtual {p0}, Lio/rong/imkit/widget/provider/LocationInputProvider;->getContext()Lio/rong/imkit/RongContext;

    move-result-object v1

    new-instance v2, Lio/rong/imkit/widget/provider/LocationInputProvider$1;

    invoke-direct {v2, p0}, Lio/rong/imkit/widget/provider/LocationInputProvider$1;-><init>(Lio/rong/imkit/widget/provider/LocationInputProvider;)V

    invoke-interface {v0, v1, v2}, Lio/rong/imkit/RongIM$LocationProvider;->onStartLocation(Landroid/content/Context;Lio/rong/imkit/RongIM$LocationProvider$LocationCallback;)V

    .line 89
    :cond_0
    return-void
.end method
