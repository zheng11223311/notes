.class Lcom/mobisage/android/MobiSageJavascriptAgent$4;
.super Ljava/lang/Object;
.source "MobiSageJavascriptAgent.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobisage/android/MobiSageJavascriptAgent;->processAPKDownloadActionAlert(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobisage/android/MobiSageJavascriptAgent;

.field final synthetic val$params:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/mobisage/android/MobiSageJavascriptAgent;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 785
    iput-object p1, p0, Lcom/mobisage/android/MobiSageJavascriptAgent$4;->this$0:Lcom/mobisage/android/MobiSageJavascriptAgent;

    iput-object p2, p0, Lcom/mobisage/android/MobiSageJavascriptAgent$4;->val$params:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 789
    iget-object v3, p0, Lcom/mobisage/android/MobiSageJavascriptAgent$4;->val$params:Ljava/util/HashMap;

    const-string v4, "eventtype"

    const/16 v5, 0x9

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    new-instance v0, Lcom/mobisage/android/MobiSageAction;

    invoke-direct {v0}, Lcom/mobisage/android/MobiSageAction;-><init>()V

    .line 793
    .local v0, "action":Lcom/mobisage/android/MobiSageAction;
    iget-object v4, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v5, "EventType"

    iget-object v3, p0, Lcom/mobisage/android/MobiSageJavascriptAgent$4;->val$params:Ljava/util/HashMap;

    const-string v6, "eventtype"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    iget-object v3, p0, Lcom/mobisage/android/MobiSageJavascriptAgent$4;->val$params:Ljava/util/HashMap;

    const-string/jumbo v4, "token"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 796
    iget-object v4, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v5, "Token"

    iget-object v3, p0, Lcom/mobisage/android/MobiSageJavascriptAgent$4;->val$params:Ljava/util/HashMap;

    const-string/jumbo v6, "token"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    :goto_0
    iget-object v3, p0, Lcom/mobisage/android/MobiSageJavascriptAgent$4;->val$params:Ljava/util/HashMap;

    const-string v4, "adid"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 801
    iget-object v4, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v5, "AdID"

    iget-object v3, p0, Lcom/mobisage/android/MobiSageJavascriptAgent$4;->val$params:Ljava/util/HashMap;

    const-string v6, "adid"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    :goto_1
    iget-object v3, p0, Lcom/mobisage/android/MobiSageJavascriptAgent$4;->val$params:Ljava/util/HashMap;

    const-string v4, "adgroupid"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 806
    iget-object v4, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v5, "AdGroupID"

    iget-object v3, p0, Lcom/mobisage/android/MobiSageJavascriptAgent$4;->val$params:Ljava/util/HashMap;

    const-string v6, "adgroupid"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    :goto_2
    iget-object v3, p0, Lcom/mobisage/android/MobiSageJavascriptAgent$4;->val$params:Ljava/util/HashMap;

    const-string/jumbo v4, "tag"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 812
    iget-object v4, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v5, "Tag"

    iget-object v3, p0, Lcom/mobisage/android/MobiSageJavascriptAgent$4;->val$params:Ljava/util/HashMap;

    const-string/jumbo v6, "tag"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    :cond_0
    iget-object v3, p0, Lcom/mobisage/android/MobiSageJavascriptAgent$4;->this$0:Lcom/mobisage/android/MobiSageJavascriptAgent;

    iget-object v3, v3, Lcom/mobisage/android/MobiSageJavascriptAgent;->customData:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 815
    iget-object v3, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v4, "CustomData"

    iget-object v5, p0, Lcom/mobisage/android/MobiSageJavascriptAgent$4;->this$0:Lcom/mobisage/android/MobiSageJavascriptAgent;

    iget-object v5, v5, Lcom/mobisage/android/MobiSageJavascriptAgent;->customData:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    :cond_1
    iget-object v3, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v4, "PublisherID"

    iget-object v5, p0, Lcom/mobisage/android/MobiSageJavascriptAgent$4;->this$0:Lcom/mobisage/android/MobiSageJavascriptAgent;

    iget-object v5, v5, Lcom/mobisage/android/MobiSageJavascriptAgent;->publisherID:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 823
    .local v1, "sdCard":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-nez v3, :cond_6

    .line 825
    :cond_2
    iget-object v3, p0, Lcom/mobisage/android/MobiSageJavascriptAgent$4;->this$0:Lcom/mobisage/android/MobiSageJavascriptAgent;

    invoke-static {v3}, Lcom/mobisage/android/MobiSageJavascriptAgent;->access$100(Lcom/mobisage/android/MobiSageJavascriptAgent;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "\u65e0\u6cd5\u4e0b\u8f7d\uff0c\u8bf7\u68c0\u67e5\u60a8\u7684SD\u5361\uff01"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 829
    .local v2, "toast":Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 838
    .end local v2    # "toast":Landroid/widget/Toast;
    :goto_3
    return-void

    .line 799
    .end local v1    # "sdCard":Ljava/io/File;
    :cond_3
    iget-object v3, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v4, "Token"

    iget-object v5, p0, Lcom/mobisage/android/MobiSageJavascriptAgent$4;->this$0:Lcom/mobisage/android/MobiSageJavascriptAgent;

    iget-object v5, v5, Lcom/mobisage/android/MobiSageJavascriptAgent;->token:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 804
    :cond_4
    iget-object v3, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v4, "AdID"

    iget-object v5, p0, Lcom/mobisage/android/MobiSageJavascriptAgent$4;->this$0:Lcom/mobisage/android/MobiSageJavascriptAgent;

    iget-object v5, v5, Lcom/mobisage/android/MobiSageJavascriptAgent;->adID:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 809
    :cond_5
    iget-object v3, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v4, "AdGroupID"

    iget-object v5, p0, Lcom/mobisage/android/MobiSageJavascriptAgent$4;->this$0:Lcom/mobisage/android/MobiSageJavascriptAgent;

    iget-object v5, v5, Lcom/mobisage/android/MobiSageJavascriptAgent;->adGroupID:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 836
    .restart local v1    # "sdCard":Ljava/io/File;
    :cond_6
    iget-object v3, p0, Lcom/mobisage/android/MobiSageJavascriptAgent$4;->this$0:Lcom/mobisage/android/MobiSageJavascriptAgent;

    iget-object v4, p0, Lcom/mobisage/android/MobiSageJavascriptAgent$4;->val$params:Ljava/util/HashMap;

    invoke-static {v3, v4}, Lcom/mobisage/android/MobiSageJavascriptAgent;->access$200(Lcom/mobisage/android/MobiSageJavascriptAgent;Ljava/util/HashMap;)V

    goto :goto_3
.end method
