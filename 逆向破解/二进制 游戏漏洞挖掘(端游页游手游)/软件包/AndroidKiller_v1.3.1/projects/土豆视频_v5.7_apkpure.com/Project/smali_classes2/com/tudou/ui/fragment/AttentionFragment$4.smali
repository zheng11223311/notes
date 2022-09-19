.class Lcom/tudou/ui/fragment/AttentionFragment$4;
.super Ljava/lang/Object;
.source "AttentionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/AttentionFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/AttentionFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/AttentionFragment;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcom/tudou/ui/fragment/AttentionFragment$4;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 276
    const-string v0, "AttentionActivity_DELETE_SUB"

    invoke-static {v0}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    :goto_0
    return-void

    .line 279
    :cond_0
    const-string v0, "\u8ba2\u9605\u5217\u8868\u5220\u9664\u6309\u94ae\u70b9\u51fb"

    iget-object v1, p0, Lcom/tudou/ui/fragment/AttentionFragment$4;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/AttentionFragment;->access$1200(Lcom/tudou/ui/fragment/AttentionFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u8ba2\u9605\u5217\u8868\u5220\u9664\u6309\u94ae\u70b9\u51fb"

    invoke-static {v0, v1, v2}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/tudou/ui/fragment/AttentionFragment$4;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/AttentionFragment;->access$1302(Lcom/tudou/ui/fragment/AttentionFragment;Z)Z

    .line 282
    iget-object v0, p0, Lcom/tudou/ui/fragment/AttentionFragment$4;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/AttentionFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/youku/widget/YoukuLoading;->show(Landroid/content/Context;)V

    .line 283
    iget-object v0, p0, Lcom/tudou/ui/fragment/AttentionFragment$4;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/AttentionFragment;->adapter:Lcom/tudou/adapter/AttentionAdapter;

    invoke-virtual {v0}, Lcom/tudou/adapter/AttentionAdapter;->removeAttentions()V

    goto :goto_0
.end method
