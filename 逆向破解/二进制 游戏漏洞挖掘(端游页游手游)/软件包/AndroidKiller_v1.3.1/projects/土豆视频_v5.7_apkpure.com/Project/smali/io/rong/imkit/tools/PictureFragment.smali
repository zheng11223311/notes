.class public Lio/rong/imkit/tools/PictureFragment;
.super Lio/rong/imkit/fragment/BaseFragment;
.source "PictureFragment.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/tools/PictureFragment$ImageProcess;
    }
.end annotation


# static fields
.field static final GET_PHOTO:I = 0x1

.field static final REQ_PHOTO:I = 0x2

.field static final SHOW_PHOTO:I = 0x3


# instance fields
.field context:Landroid/content/Context;

.field mPhotoView:Luk/co/senab/photoview/PhotoView;

.field mProcess:Lio/rong/imkit/tools/PictureFragment$ImageProcess;

.field mUri:Landroid/net/Uri;

.field uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lio/rong/imkit/fragment/BaseFragment;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Lio/rong/imkit/fragment/BaseFragment;-><init>()V

    .line 53
    iput-object p2, p0, Lio/rong/imkit/tools/PictureFragment;->uri:Landroid/net/Uri;

    .line 54
    iput-object p1, p0, Lio/rong/imkit/tools/PictureFragment;->context:Landroid/content/Context;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lio/rong/imkit/tools/PictureFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lio/rong/imkit/tools/PictureFragment;

    .prologue
    .line 37
    invoke-virtual {p0}, Lio/rong/imkit/tools/PictureFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lio/rong/imkit/tools/PictureFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lio/rong/imkit/tools/PictureFragment;

    .prologue
    .line 37
    invoke-virtual {p0}, Lio/rong/imkit/tools/PictureFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lio/rong/imkit/tools/PictureFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lio/rong/imkit/tools/PictureFragment;

    .prologue
    .line 37
    invoke-virtual {p0}, Lio/rong/imkit/tools/PictureFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    .line 82
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 124
    :goto_0
    return v6

    .line 84
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    .line 86
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lio/rong/imkit/tools/PictureFragment;->mProcess:Lio/rong/imkit/tools/PictureFragment$ImageProcess;

    if-eqz v2, :cond_0

    .line 87
    iget-object v2, p0, Lio/rong/imkit/tools/PictureFragment;->mProcess:Lio/rong/imkit/tools/PictureFragment$ImageProcess;

    invoke-virtual {v2, v6}, Lio/rong/imkit/tools/PictureFragment$ImageProcess;->cancel(Z)Z

    .line 89
    :cond_0
    new-instance v2, Lio/rong/imkit/tools/PictureFragment$ImageProcess;

    invoke-direct {v2, p0}, Lio/rong/imkit/tools/PictureFragment$ImageProcess;-><init>(Lio/rong/imkit/tools/PictureFragment;)V

    iput-object v2, p0, Lio/rong/imkit/tools/PictureFragment;->mProcess:Lio/rong/imkit/tools/PictureFragment$ImageProcess;

    .line 90
    iget-object v2, p0, Lio/rong/imkit/tools/PictureFragment;->mProcess:Lio/rong/imkit/tools/PictureFragment$ImageProcess;

    new-array v3, v6, [Landroid/net/Uri;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lio/rong/imkit/tools/PictureFragment$ImageProcess;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 91
    const-string v2, "TakingPicturesActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GET_PHOTO"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 94
    .end local v1    # "uri":Landroid/net/Uri;
    :pswitch_1
    const-string v2, "TakingPicturesActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "REQ_PHOTO"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lio/rong/imkit/tools/PictureFragment;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :try_start_0
    invoke-static {}, Lcom/sea_monster/resource/ResourceHandler;->getInstance()Lcom/sea_monster/resource/ResourceHandler;

    move-result-object v2

    new-instance v3, Lcom/sea_monster/resource/Resource;

    iget-object v4, p0, Lio/rong/imkit/tools/PictureFragment;->mUri:Landroid/net/Uri;

    invoke-direct {v3, v4}, Lcom/sea_monster/resource/Resource;-><init>(Landroid/net/Uri;)V

    new-instance v4, Lio/rong/imkit/tools/PictureFragment$1;

    invoke-direct {v4, p0}, Lio/rong/imkit/tools/PictureFragment$1;-><init>(Lio/rong/imkit/tools/PictureFragment;)V

    new-instance v5, Lio/rong/imkit/tools/PictureFragment$2;

    invoke-direct {v5, p0}, Lio/rong/imkit/tools/PictureFragment$2;-><init>(Lio/rong/imkit/tools/PictureFragment;)V

    invoke-virtual {v2, v3, v4, v5}, Lcom/sea_monster/resource/ResourceHandler;->requestResource(Lcom/sea_monster/resource/Resource;Lcom/sea_monster/resource/ResCallback;Lcom/sea_monster/network/StoreStatusCallback;)Lcom/sea_monster/network/AbstractHttpRequest;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0

    .line 119
    .end local v0    # "e":Ljava/net/URISyntaxException;
    :pswitch_2
    const-string v2, "TakingPicturesActivity"

    const-string v3, "SHOW_PHOTO"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v3, p0, Lio/rong/imkit/tools/PictureFragment;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v3, v2}, Luk/co/senab/photoview/PhotoView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public initPhoto(Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 128
    iput-object p1, p0, Lio/rong/imkit/tools/PictureFragment;->mUri:Landroid/net/Uri;

    .line 130
    iget-object v0, p0, Lio/rong/imkit/tools/PictureFragment;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/tools/PictureFragment;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    new-instance v1, Lio/rong/imkit/tools/PictureFragment$3;

    invoke-direct {v1, p0}, Lio/rong/imkit/tools/PictureFragment$3;-><init>(Lio/rong/imkit/tools/PictureFragment;)V

    invoke-virtual {v0, v1}, Lio/rong/imkit/RongContext;->executorBackground(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 148
    :cond_1
    new-instance v0, Lio/rong/imkit/tools/PictureFragment$ImageProcess;

    invoke-direct {v0, p0}, Lio/rong/imkit/tools/PictureFragment$ImageProcess;-><init>(Lio/rong/imkit/tools/PictureFragment;)V

    iput-object v0, p0, Lio/rong/imkit/tools/PictureFragment;->mProcess:Lio/rong/imkit/tools/PictureFragment$ImageProcess;

    .line 149
    iget-object v0, p0, Lio/rong/imkit/tools/PictureFragment;->mProcess:Lio/rong/imkit/tools/PictureFragment$ImageProcess;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lio/rong/imkit/tools/PictureFragment;->mUri:Landroid/net/Uri;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lio/rong/imkit/tools/PictureFragment$ImageProcess;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    sget v1, Lio/rong/imkit/R$layout;->rc_fr_photo2:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 63
    .local v0, "view":Landroid/view/View;
    sget v1, Lio/rong/imkit/R$id;->rc_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Luk/co/senab/photoview/PhotoView;

    iput-object v1, p0, Lio/rong/imkit/tools/PictureFragment;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    .line 64
    iget-object v1, p0, Lio/rong/imkit/tools/PictureFragment;->uri:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Lio/rong/imkit/tools/PictureFragment;->initPhoto(Landroid/net/Uri;)V

    .line 65
    return-object v0
.end method

.method public onRestoreUI()V
    .locals 0

    .prologue
    .line 204
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    new-instance v0, Lio/rong/imkit/tools/PictureFragment$ImageProcess;

    invoke-direct {v0, p0}, Lio/rong/imkit/tools/PictureFragment$ImageProcess;-><init>(Lio/rong/imkit/tools/PictureFragment;)V

    iput-object v0, p0, Lio/rong/imkit/tools/PictureFragment;->mProcess:Lio/rong/imkit/tools/PictureFragment$ImageProcess;

    .line 71
    invoke-super {p0, p1, p2}, Lio/rong/imkit/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 72
    return-void
.end method
