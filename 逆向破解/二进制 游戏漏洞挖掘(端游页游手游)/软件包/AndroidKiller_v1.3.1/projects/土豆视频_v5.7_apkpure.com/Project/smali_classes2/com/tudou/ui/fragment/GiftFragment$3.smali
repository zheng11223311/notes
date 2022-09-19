.class Lcom/tudou/ui/fragment/GiftFragment$3;
.super Ljava/lang/Object;
.source "GiftFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/GiftFragment;->refreshGiftLayout(Lcom/youku/vo/GiftBean$Data;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/GiftFragment;

.field final synthetic val$data:Lcom/youku/vo/GiftBean$Data;

.field final synthetic val$finalI:I

.field final synthetic val$resourceId:I


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/GiftFragment;Lcom/youku/vo/GiftBean$Data;II)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/tudou/ui/fragment/GiftFragment$3;->this$0:Lcom/tudou/ui/fragment/GiftFragment;

    iput-object p2, p0, Lcom/tudou/ui/fragment/GiftFragment$3;->val$data:Lcom/youku/vo/GiftBean$Data;

    iput p3, p0, Lcom/tudou/ui/fragment/GiftFragment$3;->val$finalI:I

    iput p4, p0, Lcom/tudou/ui/fragment/GiftFragment$3;->val$resourceId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v6, 0x12

    .line 262
    const-string v2, "gift_click"

    const-wide/16 v4, 0x3e8

    invoke-static {v2, v4, v5}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 284
    :goto_0
    return-void

    .line 265
    :cond_0
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 266
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tudou/ui/fragment/GiftFragment$3;->this$0:Lcom/tudou/ui/fragment/GiftFragment;

    invoke-virtual {v2}, Lcom/tudou/ui/fragment/GiftFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/tudou/ui/activity/GiftPayActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 267
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "gift_data_bean"

    iget-object v3, p0, Lcom/tudou/ui/fragment/GiftFragment$3;->val$data:Lcom/youku/vo/GiftBean$Data;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 268
    const-string v2, "gift_index"

    iget v3, p0, Lcom/tudou/ui/fragment/GiftFragment$3;->val$finalI:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 269
    const-string v2, "item_code"

    iget-object v3, p0, Lcom/tudou/ui/fragment/GiftFragment$3;->this$0:Lcom/tudou/ui/fragment/GiftFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/GiftFragment;->access$500(Lcom/tudou/ui/fragment/GiftFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    const-string v2, "gift_resource_id"

    iget v3, p0, Lcom/tudou/ui/fragment/GiftFragment$3;->val$resourceId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 271
    iget-object v2, p0, Lcom/tudou/ui/fragment/GiftFragment$3;->this$0:Lcom/tudou/ui/fragment/GiftFragment;

    invoke-virtual {v2}, Lcom/tudou/ui/fragment/GiftFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 272
    iget-object v2, p0, Lcom/tudou/ui/fragment/GiftFragment$3;->this$0:Lcom/tudou/ui/fragment/GiftFragment;

    invoke-virtual {v2}, Lcom/tudou/ui/fragment/GiftFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/youku/widget/YoukuAnimation;->activityOpen(Landroid/content/Context;)V

    goto :goto_0

    .line 274
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 275
    .local v0, "goLoginIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/tudou/ui/fragment/GiftFragment$3;->this$0:Lcom/tudou/ui/fragment/GiftFragment;

    invoke-virtual {v2}, Lcom/tudou/ui/fragment/GiftFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/tudou/ui/activity/LoginActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 276
    const-string v2, "TAG"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 277
    const-string v2, "gift_data_bean"

    iget-object v3, p0, Lcom/tudou/ui/fragment/GiftFragment$3;->val$data:Lcom/youku/vo/GiftBean$Data;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 278
    const-string v2, "gift_index"

    iget v3, p0, Lcom/tudou/ui/fragment/GiftFragment$3;->val$finalI:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 279
    const-string v2, "item_code"

    iget-object v3, p0, Lcom/tudou/ui/fragment/GiftFragment$3;->this$0:Lcom/tudou/ui/fragment/GiftFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/GiftFragment;->access$500(Lcom/tudou/ui/fragment/GiftFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    const-string v2, "gift_resource_id"

    iget v3, p0, Lcom/tudou/ui/fragment/GiftFragment$3;->val$resourceId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 281
    iget-object v2, p0, Lcom/tudou/ui/fragment/GiftFragment$3;->this$0:Lcom/tudou/ui/fragment/GiftFragment;

    invoke-virtual {v2, v0, v6}, Lcom/tudou/ui/fragment/GiftFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 282
    iget-object v2, p0, Lcom/tudou/ui/fragment/GiftFragment$3;->this$0:Lcom/tudou/ui/fragment/GiftFragment;

    invoke-virtual {v2}, Lcom/tudou/ui/fragment/GiftFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/youku/widget/YoukuAnimation;->activityOpen(Landroid/content/Context;)V

    goto/16 :goto_0
.end method
