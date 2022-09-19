.class public Lio/rong/imkit/widget/provider/ImageInputProvider;
.super Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;
.source "ImageInputProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/widget/provider/ImageInputProvider$UploadRunnable;,
        Lio/rong/imkit/widget/provider/ImageInputProvider$AttachRunnable;
    }
.end annotation


# instance fields
.field private mMsgMap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lio/rong/imlib/model/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mQueueSize:I


# direct methods
.method public constructor <init>(Lio/rong/imkit/RongContext;)V
    .locals 1
    .param p1, "context"    # Lio/rong/imkit/RongContext;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;-><init>(Lio/rong/imkit/RongContext;)V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lio/rong/imkit/widget/provider/ImageInputProvider;->mQueueSize:I

    .line 32
    return-void
.end method

.method static synthetic access$000(Lio/rong/imkit/widget/provider/ImageInputProvider;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lio/rong/imkit/widget/provider/ImageInputProvider;

    .prologue
    .line 26
    iget-object v0, p0, Lio/rong/imkit/widget/provider/ImageInputProvider;->mMsgMap:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lio/rong/imkit/widget/provider/ImageInputProvider;)I
    .locals 1
    .param p0, "x0"    # Lio/rong/imkit/widget/provider/ImageInputProvider;

    .prologue
    .line 26
    iget v0, p0, Lio/rong/imkit/widget/provider/ImageInputProvider;->mQueueSize:I

    return v0
.end method


# virtual methods
.method public obtainPluginDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lio/rong/imkit/R$drawable;->rc_ic_picture:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public obtainPluginTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    sget v0, Lio/rong/imkit/R$string;->rc_plugins_image:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 54
    const/4 v3, -0x1

    if-eq p2, v3, :cond_0

    .line 75
    :goto_0
    return-void

    .line 57
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/rong/imkit/widget/provider/ImageInputProvider;->mMsgMap:Ljava/util/ArrayList;

    .line 58
    const/4 v3, 0x0

    iput v3, p0, Lio/rong/imkit/widget/provider/ImageInputProvider;->mQueueSize:I

    .line 59
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v3, "content"

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 61
    const/4 v3, 0x1

    iput v3, p0, Lio/rong/imkit/widget/provider/ImageInputProvider;->mQueueSize:I

    .line 62
    invoke-virtual {p0}, Lio/rong/imkit/widget/provider/ImageInputProvider;->getContext()Lio/rong/imkit/RongContext;

    move-result-object v3

    new-instance v4, Lio/rong/imkit/widget/provider/ImageInputProvider$AttachRunnable;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lio/rong/imkit/widget/provider/ImageInputProvider$AttachRunnable;-><init>(Lio/rong/imkit/widget/provider/ImageInputProvider;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Lio/rong/imkit/RongContext;->executorBackground(Ljava/lang/Runnable;)V

    .line 74
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 64
    :cond_2
    const-string v3, "android.intent.extra.RETURN_RESULT"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 66
    const-string v3, "android.intent.extra.RETURN_RESULT"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 68
    .local v2, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, p0, Lio/rong/imkit/widget/provider/ImageInputProvider;->mQueueSize:I

    .line 69
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 70
    .local v1, "item":Landroid/net/Uri;
    invoke-virtual {p0}, Lio/rong/imkit/widget/provider/ImageInputProvider;->getContext()Lio/rong/imkit/RongContext;

    move-result-object v3

    new-instance v4, Lio/rong/imkit/widget/provider/ImageInputProvider$AttachRunnable;

    invoke-direct {v4, p0, v1}, Lio/rong/imkit/widget/provider/ImageInputProvider$AttachRunnable;-><init>(Lio/rong/imkit/widget/provider/ImageInputProvider;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Lio/rong/imkit/RongContext;->executorBackground(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public onPluginClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 46
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 47
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lio/rong/imkit/tools/SelectPictureActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 48
    const/16 v1, 0x17

    invoke-virtual {p0, v0, v1}, Lio/rong/imkit/widget/provider/ImageInputProvider;->startActivityForResult(Landroid/content/Intent;I)V

    .line 49
    return-void
.end method
