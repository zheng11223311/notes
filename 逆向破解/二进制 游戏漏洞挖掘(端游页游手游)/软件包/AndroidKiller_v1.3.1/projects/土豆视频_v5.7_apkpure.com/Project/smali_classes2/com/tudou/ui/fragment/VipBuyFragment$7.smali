.class Lcom/tudou/ui/fragment/VipBuyFragment$7;
.super Ljava/lang/Object;
.source "VipBuyFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/VipBuyFragment;->buildView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/VipBuyFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/VipBuyFragment;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/tudou/ui/fragment/VipBuyFragment$7;->this$0:Lcom/tudou/ui/fragment/VipBuyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 251
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 257
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/VipBuyFragment$7;->this$0:Lcom/tudou/ui/fragment/VipBuyFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/VipBuyFragment;->access$200(Lcom/tudou/ui/fragment/VipBuyFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/widget/HintView;->dismiss()V

    .line 256
    iget-object v0, p0, Lcom/tudou/ui/fragment/VipBuyFragment$7;->this$0:Lcom/tudou/ui/fragment/VipBuyFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/VipBuyFragment;->access$500(Lcom/tudou/ui/fragment/VipBuyFragment;)V

    goto :goto_0
.end method
