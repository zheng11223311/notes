.class Lcom/tudou/ui/fragment/SplashFragment$SplashHandler;
.super Landroid/os/Handler;
.source "SplashFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/SplashFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SplashHandler"
.end annotation


# static fields
.field public static final ANIM_GOON:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/SplashFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/SplashFragment;)V
    .locals 0

    .prologue
    .line 685
    iput-object p1, p0, Lcom/tudou/ui/fragment/SplashFragment$SplashHandler;->this$0:Lcom/tudou/ui/fragment/SplashFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 691
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 692
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 704
    :goto_0
    return-void

    .line 694
    :pswitch_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment$SplashHandler;->this$0:Lcom/tudou/ui/fragment/SplashFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SplashFragment;->access$3800(Lcom/tudou/ui/fragment/SplashFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 695
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment$SplashHandler;->this$0:Lcom/tudou/ui/fragment/SplashFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SplashFragment;->access$3900(Lcom/tudou/ui/fragment/SplashFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020a69

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 697
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment$SplashHandler;->this$0:Lcom/tudou/ui/fragment/SplashFragment;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SplashFragment$SplashHandler;->this$0:Lcom/tudou/ui/fragment/SplashFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SplashFragment;->access$2700(Lcom/tudou/ui/fragment/SplashFragment;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const v2, 0x7f04001e

    invoke-static {v0, v1, v2}, Lcom/tudou/ui/fragment/SplashFragment;->access$4000(Lcom/tudou/ui/fragment/SplashFragment;Landroid/view/View;I)V

    .line 698
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment$SplashHandler;->this$0:Lcom/tudou/ui/fragment/SplashFragment;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SplashFragment$SplashHandler;->this$0:Lcom/tudou/ui/fragment/SplashFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SplashFragment;->access$3900(Lcom/tudou/ui/fragment/SplashFragment;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f04005e

    invoke-static {v0, v1, v2}, Lcom/tudou/ui/fragment/SplashFragment;->access$4000(Lcom/tudou/ui/fragment/SplashFragment;Landroid/view/View;I)V

    .line 699
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment$SplashHandler;->this$0:Lcom/tudou/ui/fragment/SplashFragment;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SplashFragment$SplashHandler;->this$0:Lcom/tudou/ui/fragment/SplashFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SplashFragment;->access$3800(Lcom/tudou/ui/fragment/SplashFragment;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f04005d

    invoke-static {v0, v1, v2}, Lcom/tudou/ui/fragment/SplashFragment;->access$4000(Lcom/tudou/ui/fragment/SplashFragment;Landroid/view/View;I)V

    .line 701
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment$SplashHandler;->this$0:Lcom/tudou/ui/fragment/SplashFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SplashFragment;->access$4100(Lcom/tudou/ui/fragment/SplashFragment;)V

    goto :goto_0

    .line 692
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
