.class Lio/rong/voipkit/activity/BaseActivity$8;
.super Landroid/os/Handler;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/voipkit/activity/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/voipkit/activity/BaseActivity;


# direct methods
.method constructor <init>(Lio/rong/voipkit/activity/BaseActivity;)V
    .locals 0

    .prologue
    .line 550
    iput-object p1, p0, Lio/rong/voipkit/activity/BaseActivity$8;->this$0:Lio/rong/voipkit/activity/BaseActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 553
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    .line 554
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 555
    iget-object v1, p0, Lio/rong/voipkit/activity/BaseActivity$8;->this$0:Lio/rong/voipkit/activity/BaseActivity;

    iget-object v1, v1, Lio/rong/voipkit/activity/BaseActivity;->user_photo:Lio/rong/imkit/widget/AsyncImageView;

    invoke-virtual {v1, v0}, Lio/rong/imkit/widget/AsyncImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 556
    :cond_0
    return-void
.end method
