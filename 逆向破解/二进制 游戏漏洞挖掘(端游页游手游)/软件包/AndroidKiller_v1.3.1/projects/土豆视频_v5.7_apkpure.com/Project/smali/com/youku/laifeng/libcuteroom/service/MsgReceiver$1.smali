.class Lcom/youku/laifeng/libcuteroom/service/MsgReceiver$1;
.super Ljava/lang/Object;
.source "MsgReceiver.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->loadAnchorCoverPic(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;

.field final synthetic val$notificationId:I


# direct methods
.method constructor <init>(Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver$1;->this$0:Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;

    iput p2, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver$1;->val$notificationId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 312
    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 306
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver$1;->this$0:Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;

    const/4 v1, 0x0

    iget v2, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver$1;->val$notificationId:I

    invoke-static {v0, p3, v1, v2}, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->access$100(Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;Landroid/graphics/Bitmap;ZI)V

    .line 307
    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "failReason"    # Lcom/nostra13/universalimageloader/core/assist/FailReason;

    .prologue
    .line 300
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver$1;->this$0:Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;

    invoke-static {v1}, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->access$000(Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/laifeng/libcuteroom/R$drawable;->ic_launcher_notify:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 301
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver$1;->this$0:Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;

    const/4 v2, 0x1

    iget v3, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver$1;->val$notificationId:I

    invoke-static {v1, v0, v2, v3}, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->access$100(Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;Landroid/graphics/Bitmap;ZI)V

    .line 302
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 296
    return-void
.end method
