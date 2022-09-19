.class Lcom/tudou/ui/fragment/MessageFragment$2;
.super Ljava/lang/Object;
.source "MessageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/MessageFragment;->initTitle(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/MessageFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/MessageFragment;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/tudou/ui/fragment/MessageFragment$2;->this$0:Lcom/tudou/ui/fragment/MessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 75
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tudou/ui/fragment/MessageFragment$2;->this$0:Lcom/tudou/ui/fragment/MessageFragment;

    iget v2, v2, Lcom/tudou/ui/fragment/MessageFragment;->position:I

    if-ne v1, v2, :cond_0

    .line 76
    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageFragment$2;->this$0:Lcom/tudou/ui/fragment/MessageFragment;

    iget-boolean v1, v1, Lcom/tudou/ui/fragment/MessageFragment;->isEdit:Z

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 77
    .local v0, "temp":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 78
    const-string v1, "MessageActivity"

    const-string v2, "\u8fdb\u5165\u7f16\u8f91"

    invoke-static {v1, v2}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v1, "\u6d88\u606f\u4e2d\u5fc3\u7f16\u8f91\u70b9\u51fb"

    const-string v2, "\u6d88\u606f\u4e2d\u5fc3\u7f16\u8f91\u70b9\u51fb"

    const-string v3, "MyChannle|Message|Edit"

    invoke-static {v1, v2, v3}, Lcom/youku/util/MessageManager;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :goto_1
    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageFragment$2;->this$0:Lcom/tudou/ui/fragment/MessageFragment;

    invoke-virtual {v1, v0}, Lcom/tudou/ui/fragment/MessageFragment;->setEdit(Z)V

    .line 88
    .end local v0    # "temp":Z
    :cond_0
    return-void

    .line 76
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 82
    .restart local v0    # "temp":Z
    :cond_2
    const-string v1, "MessageActivity"

    const-string v2, "\u5b8c\u6210\u7f16\u8f91"

    invoke-static {v1, v2}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v1, "\u6d88\u606f\u4e2d\u5fc3\u7f16\u8f91\u5b8c\u6210\u6309\u94ae\u70b9\u51fb"

    const-string v2, "\u6d88\u606f\u4e2d\u5fc3\u7f16\u8f91\u5b8c\u6210\u6309\u94ae\u70b9\u51fb"

    const-string v3, "MyChannle|Edit|Message"

    invoke-static {v1, v2, v3}, Lcom/youku/util/MessageManager;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
