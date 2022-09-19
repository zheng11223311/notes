.class Lcom/tudou/ui/fragment/MoreFragment$14;
.super Ljava/lang/Object;
.source "MoreFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/MoreFragment;->initResolution()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/MoreFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/MoreFragment;)V
    .locals 0

    .prologue
    .line 1709
    iput-object p1, p0, Lcom/tudou/ui/fragment/MoreFragment$14;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1712
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 1713
    .local v5, "isSelected":Z
    if-eqz v5, :cond_1

    .line 1735
    :cond_0
    return-void

    .line 1716
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v6, p0, Lcom/tudou/ui/fragment/MoreFragment$14;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/MoreFragment;->access$4400(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-ge v4, v6, :cond_0

    .line 1717
    iget-object v6, p0, Lcom/tudou/ui/fragment/MoreFragment$14;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/MoreFragment;->access$4400(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1718
    .local v0, "childView":Landroid/view/View;
    const v6, 0x7f0c0b1a

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1719
    .local v1, "curChoice":Landroid/widget/ImageView;
    const v6, 0x7f0c0c59

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1720
    .local v2, "curTitle":Landroid/widget/TextView;
    if-ne p1, v0, :cond_3

    .line 1721
    const v6, 0x7f0207fe

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1722
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1723
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1724
    .local v3, "curtitleStr":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1725
    iget-object v6, p0, Lcom/tudou/ui/fragment/MoreFragment$14;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/MoreFragment;->access$4500(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1726
    const-string v6, "resolution_save"

    invoke-static {v6, v3}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1716
    .end local v3    # "curtitleStr":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1729
    :cond_3
    const v6, 0x7f0207ff

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1730
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1
.end method
