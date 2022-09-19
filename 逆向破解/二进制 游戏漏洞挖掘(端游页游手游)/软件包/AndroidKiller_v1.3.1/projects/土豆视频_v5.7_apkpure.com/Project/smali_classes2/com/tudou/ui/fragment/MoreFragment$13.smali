.class Lcom/tudou/ui/fragment/MoreFragment$13;
.super Ljava/lang/Object;
.source "MoreFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/MoreFragment;->addSavePathItem(Lcom/tudou/service/download/SDCardManager$SDCardInfo;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/MoreFragment;

.field final synthetic val$info:Lcom/tudou/service/download/SDCardManager$SDCardInfo;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/MoreFragment;Lcom/tudou/service/download/SDCardManager$SDCardInfo;)V
    .locals 0

    .prologue
    .line 1647
    iput-object p1, p0, Lcom/tudou/ui/fragment/MoreFragment$13;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    iput-object p2, p0, Lcom/tudou/ui/fragment/MoreFragment$13;->val$info:Lcom/tudou/service/download/SDCardManager$SDCardInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x1

    .line 1650
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 1651
    .local v5, "isSelect":Z
    if-eqz v5, :cond_1

    .line 1683
    :cond_0
    :goto_0
    return-void

    .line 1652
    :cond_1
    const-string v6, "fist_set"

    invoke-static {v6, v8}, Lcom/tudou/android/Youku;->getPreferenceBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 1653
    .local v4, "isFistChange":Z
    if-eqz v4, :cond_2

    .line 1654
    new-instance v1, Lcom/youku/widget/TudouDialog;

    iget-object v6, p0, Lcom/tudou/ui/fragment/MoreFragment$13;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-virtual {v6}, Lcom/tudou/ui/fragment/MoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    sget-object v7, Lcom/youku/widget/TudouDialog$TYPE;->normal:Lcom/youku/widget/TudouDialog$TYPE;

    invoke-direct {v1, v6, v7}, Lcom/youku/widget/TudouDialog;-><init>(Landroid/content/Context;Lcom/youku/widget/TudouDialog$TYPE;)V

    .line 1656
    .local v1, "dialog":Lcom/youku/widget/TudouDialog;
    const-string v6, "\u6e05\u9664\u7f13\u5b58\u6216\u5378\u8f7d\u91cd\u88c5app\u53ef\u80fd\u4f1a\u5bfc\u81f4SD\u5361\u5185\u5bb9\u6e05\u7a7a!"

    invoke-virtual {v1, v6}, Lcom/youku/widget/TudouDialog;->setMessage(Ljava/lang/String;)V

    .line 1657
    iget-object v6, p0, Lcom/tudou/ui/fragment/MoreFragment$13;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    const v7, 0x7f0d00c9

    invoke-virtual {v6, v7}, Lcom/tudou/ui/fragment/MoreFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/tudou/ui/fragment/MoreFragment$13$1;

    invoke-direct {v7, p0, v1}, Lcom/tudou/ui/fragment/MoreFragment$13$1;-><init>(Lcom/tudou/ui/fragment/MoreFragment$13;Lcom/youku/widget/TudouDialog;)V

    invoke-virtual {v1, v6, v7}, Lcom/youku/widget/TudouDialog;->setNormalNegtiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 1666
    invoke-virtual {v1}, Lcom/youku/widget/TudouDialog;->show()V

    goto :goto_0

    .line 1670
    .end local v1    # "dialog":Lcom/youku/widget/TudouDialog;
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v6, p0, Lcom/tudou/ui/fragment/MoreFragment$13;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/MoreFragment;->access$3900(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 1671
    iget-object v6, p0, Lcom/tudou/ui/fragment/MoreFragment$13;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/MoreFragment;->access$3900(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1672
    .local v0, "childView":Landroid/view/View;
    const v6, 0x7f0c0b1a

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1673
    .local v3, "imgChoice":Landroid/widget/ImageView;
    if-ne p1, v0, :cond_3

    .line 1674
    const v6, 0x7f0207fe

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1675
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1676
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v6

    iget-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment$13;->val$info:Lcom/tudou/service/download/SDCardManager$SDCardInfo;

    iget-object v7, v7, Lcom/tudou/service/download/SDCardManager$SDCardInfo;->path:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/tudou/service/download/DownloadManager;->setCurrentDownloadSDCardPath(Ljava/lang/String;)V

    .line 1677
    iget-object v6, p0, Lcom/tudou/ui/fragment/MoreFragment$13;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/MoreFragment;->access$4300(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment$13;->val$info:Lcom/tudou/service/download/SDCardManager$SDCardInfo;

    iget-object v7, v7, Lcom/tudou/service/download/SDCardManager$SDCardInfo;->descCurPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1670
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1679
    :cond_3
    const v6, 0x7f0207ff

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1680
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_2
.end method
