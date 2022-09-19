.class Lcom/tudou/ui/fragment/MyTudouFragment$11;
.super Ljava/lang/Object;
.source "MyTudouFragment.java"

# interfaces
.implements Lcom/youku/service/login/ILogin$IMembershipCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/MyTudouFragment;->setUserInfo(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/MyTudouFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/MyTudouFragment;)V
    .locals 0

    .prologue
    .line 813
    iput-object p1, p0, Lcom/tudou/ui/fragment/MyTudouFragment$11;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/youku/vo/UserBean;)V
    .locals 1
    .param p1, "bean"    # Lcom/youku/vo/UserBean;

    .prologue
    .line 818
    iget-boolean v0, p1, Lcom/youku/vo/UserBean;->isVip:Z

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment$11;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$2000(Lcom/tudou/ui/fragment/MyTudouFragment;)V

    .line 823
    :goto_0
    return-void

    .line 821
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment$11;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$2100(Lcom/tudou/ui/fragment/MyTudouFragment;)V

    goto :goto_0
.end method
