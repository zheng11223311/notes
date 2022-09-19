.class Lcom/tudou/ui/fragment/HomeFragment$14$2;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/HomeFragment$14;->onSuccess(Lcom/youku/network/HttpRequestManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/ui/fragment/HomeFragment$14;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/HomeFragment$14;)V
    .locals 0

    .prologue
    .line 1715
    iput-object p1, p0, Lcom/tudou/ui/fragment/HomeFragment$14$2;->this$1:Lcom/tudou/ui/fragment/HomeFragment$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 1718
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment$14$2;->this$1:Lcom/tudou/ui/fragment/HomeFragment$14;

    iget-object v0, v0, Lcom/tudou/ui/fragment/HomeFragment$14;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HomeFragment;->access$2100(Lcom/tudou/ui/fragment/HomeFragment;)Lcom/youku/vo/AdResult;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/vo/AdResult;->HTML:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/AdResult$AdHTML;

    iget-object v0, v0, Lcom/youku/vo/AdResult$AdHTML;->CU:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1726
    :goto_0
    return-void

    .line 1722
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment$14$2;->this$1:Lcom/tudou/ui/fragment/HomeFragment$14;

    iget-object v0, v0, Lcom/tudou/ui/fragment/HomeFragment$14;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HomeFragment;->access$2100(Lcom/tudou/ui/fragment/HomeFragment;)Lcom/youku/vo/AdResult;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/vo/AdResult;->HTML:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/AdResult$AdHTML;

    iget-object v0, v0, Lcom/youku/vo/AdResult$AdHTML;->CUM:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HomeFragment;->showExposure(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1725
    :goto_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment$14$2;->this$1:Lcom/tudou/ui/fragment/HomeFragment$14;

    iget-object v0, v0, Lcom/tudou/ui/fragment/HomeFragment$14;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment$14$2;->this$1:Lcom/tudou/ui/fragment/HomeFragment$14;

    iget-object v0, v0, Lcom/tudou/ui/fragment/HomeFragment$14;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HomeFragment;->access$2100(Lcom/tudou/ui/fragment/HomeFragment;)Lcom/youku/vo/AdResult;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/vo/AdResult;->HTML:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/AdResult$AdHTML;

    iget-object v3, v0, Lcom/youku/vo/AdResult$AdHTML;->CU:Ljava/lang/String;

    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment$14$2;->this$1:Lcom/tudou/ui/fragment/HomeFragment$14;

    iget-object v0, v0, Lcom/tudou/ui/fragment/HomeFragment$14;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HomeFragment;->access$2100(Lcom/tudou/ui/fragment/HomeFragment;)Lcom/youku/vo/AdResult;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/vo/AdResult;->HTML:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/AdResult$AdHTML;

    iget-object v0, v0, Lcom/youku/vo/AdResult$AdHTML;->CUF:Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_2
    invoke-static {v2, v3, v0}, Lcom/youku/util/Util;->goWebShow(Landroid/app/Activity;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    .line 1723
    :catch_0
    move-exception v0

    goto :goto_1
.end method
