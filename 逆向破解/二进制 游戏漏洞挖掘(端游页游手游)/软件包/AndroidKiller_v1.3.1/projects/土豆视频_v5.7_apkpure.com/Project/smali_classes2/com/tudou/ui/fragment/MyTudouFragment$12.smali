.class Lcom/tudou/ui/fragment/MyTudouFragment$12;
.super Ljava/lang/Object;
.source "MyTudouFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/MyTudouFragment;
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
    .line 972
    iput-object p1, p0, Lcom/tudou/ui/fragment/MyTudouFragment$12;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 976
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-nez v2, :cond_0

    move v1, v3

    .line 978
    .local v1, "isall":Z
    :goto_0
    if-eqz v1, :cond_4

    .line 979
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 980
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "v":Landroid/view/View;
    const-string v2, "\u53d6\u6d88\u5168\u9009"

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 981
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTudouFragment$12;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$200(Lcom/tudou/ui/fragment/MyTudouFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 982
    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTudouFragment$12;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$1100(Lcom/tudou/ui/fragment/MyTudouFragment;)Lcom/youku/util/DeleteAbleItemList;

    move-result-object v4

    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTudouFragment$12;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$200(Lcom/tudou/ui/fragment/MyTudouFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/service/download/DownloadInfo;

    invoke-virtual {v4, v2}, Lcom/youku/util/DeleteAbleItemList;->containsItem(Lcom/tudou/service/download/DownloadInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 981
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 976
    .end local v0    # "i":I
    .end local v1    # "isall":Z
    .restart local p1    # "v":Landroid/view/View;
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    .line 984
    .end local p1    # "v":Landroid/view/View;
    .restart local v0    # "i":I
    .restart local v1    # "isall":Z
    :cond_1
    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTudouFragment$12;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$1100(Lcom/tudou/ui/fragment/MyTudouFragment;)Lcom/youku/util/DeleteAbleItemList;

    move-result-object v4

    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTudouFragment$12;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$200(Lcom/tudou/ui/fragment/MyTudouFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/service/download/DownloadInfo;

    invoke-virtual {v4, v2}, Lcom/youku/util/DeleteAbleItemList;->addItems(Lcom/tudou/service/download/DownloadInfo;)V

    goto :goto_2

    .line 986
    :cond_2
    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTudouFragment$12;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$100(Lcom/tudou/ui/fragment/MyTudouFragment;)Lcom/youku/widget/CacheDeletePopUpWindow;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/widget/CacheDeletePopUpWindow;->delButton:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5220\u9664("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/ui/fragment/MyTudouFragment$12;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$1100(Lcom/tudou/ui/fragment/MyTudouFragment;)Lcom/youku/util/DeleteAbleItemList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/youku/util/DeleteAbleItemList;->getVids()[Lcom/tudou/service/download/DownloadInfo;

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 988
    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTudouFragment$12;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$100(Lcom/tudou/ui/fragment/MyTudouFragment;)Lcom/youku/widget/CacheDeletePopUpWindow;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/widget/CacheDeletePopUpWindow;->delButton:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 989
    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTudouFragment$12;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$100(Lcom/tudou/ui/fragment/MyTudouFragment;)Lcom/youku/widget/CacheDeletePopUpWindow;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/widget/CacheDeletePopUpWindow;->delButton:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 990
    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTudouFragment$12;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$100(Lcom/tudou/ui/fragment/MyTudouFragment;)Lcom/youku/widget/CacheDeletePopUpWindow;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/widget/CacheDeletePopUpWindow;->delButton:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tudou/ui/fragment/MyTudouFragment$12;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$2200(Lcom/tudou/ui/fragment/MyTudouFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v3

    const v4, 0x7f0e00f3

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1011
    :cond_3
    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTudouFragment$12;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$900(Lcom/tudou/ui/fragment/MyTudouFragment;)V

    .line 1012
    return-void

    .line 996
    .end local v0    # "i":I
    .restart local p1    # "v":Landroid/view/View;
    :cond_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 997
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "v":Landroid/view/View;
    const-string v2, "\u5168\u9009"

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 998
    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTudouFragment$12;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$100(Lcom/tudou/ui/fragment/MyTudouFragment;)Lcom/youku/widget/CacheDeletePopUpWindow;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/widget/CacheDeletePopUpWindow;->delButton:Landroid/widget/TextView;

    const-string v3, "\u5220\u9664"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 999
    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTudouFragment$12;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$100(Lcom/tudou/ui/fragment/MyTudouFragment;)Lcom/youku/widget/CacheDeletePopUpWindow;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/widget/CacheDeletePopUpWindow;->delButton:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1000
    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTudouFragment$12;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$100(Lcom/tudou/ui/fragment/MyTudouFragment;)Lcom/youku/widget/CacheDeletePopUpWindow;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/widget/CacheDeletePopUpWindow;->delButton:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1001
    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTudouFragment$12;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$100(Lcom/tudou/ui/fragment/MyTudouFragment;)Lcom/youku/widget/CacheDeletePopUpWindow;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/widget/CacheDeletePopUpWindow;->delButton:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tudou/ui/fragment/MyTudouFragment$12;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$2300(Lcom/tudou/ui/fragment/MyTudouFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v3

    const v4, 0x7f0e00f4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1006
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTudouFragment$12;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$200(Lcom/tudou/ui/fragment/MyTudouFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 1007
    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTudouFragment$12;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$1100(Lcom/tudou/ui/fragment/MyTudouFragment;)Lcom/youku/util/DeleteAbleItemList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/util/DeleteAbleItemList;->clearQueue()V

    .line 1006
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method
