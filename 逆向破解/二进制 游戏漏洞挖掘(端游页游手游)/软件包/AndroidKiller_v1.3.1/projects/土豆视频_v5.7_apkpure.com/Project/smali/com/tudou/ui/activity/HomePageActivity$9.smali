.class Lcom/tudou/ui/activity/HomePageActivity$9;
.super Ljava/lang/Thread;
.source "HomePageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/activity/HomePageActivity;->progressDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/activity/HomePageActivity;

.field final synthetic val$cancelAble:Z


# direct methods
.method constructor <init>(Lcom/tudou/ui/activity/HomePageActivity;Z)V
    .locals 0

    .prologue
    .line 1089
    iput-object p1, p0, Lcom/tudou/ui/activity/HomePageActivity$9;->this$0:Lcom/tudou/ui/activity/HomePageActivity;

    iput-boolean p2, p0, Lcom/tudou/ui/activity/HomePageActivity$9;->val$cancelAble:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const v4, 0x7f0d01ec

    .line 1092
    :try_start_0
    iget-object v1, p0, Lcom/tudou/ui/activity/HomePageActivity$9;->this$0:Lcom/tudou/ui/activity/HomePageActivity;

    iget-object v2, p0, Lcom/tudou/ui/activity/HomePageActivity$9;->this$0:Lcom/tudou/ui/activity/HomePageActivity;

    invoke-static {v2}, Lcom/tudou/ui/activity/HomePageActivity;->access$100(Lcom/tudou/ui/activity/HomePageActivity;)Lcom/youku/vo/Initial;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/vo/Initial;->update:Lcom/youku/vo/Initial$Update;

    iget-object v2, v2, Lcom/youku/vo/Initial$Update;->download:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/tudou/ui/activity/HomePageActivity$9;->val$cancelAble:Z

    invoke-static {v1, v2, v3}, Lcom/tudou/ui/activity/HomePageActivity;->access$400(Lcom/tudou/ui/activity/HomePageActivity;Ljava/lang/String;Z)V

    .line 1093
    iget-boolean v1, p0, Lcom/tudou/ui/activity/HomePageActivity$9;->val$cancelAble:Z

    if-nez v1, :cond_0

    .line 1094
    iget-object v1, p0, Lcom/tudou/ui/activity/HomePageActivity$9;->this$0:Lcom/tudou/ui/activity/HomePageActivity;

    invoke-static {v1}, Lcom/tudou/ui/activity/HomePageActivity;->access$500(Lcom/tudou/ui/activity/HomePageActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1095
    iget-object v1, p0, Lcom/tudou/ui/activity/HomePageActivity$9;->this$0:Lcom/tudou/ui/activity/HomePageActivity;

    invoke-virtual {v1}, Lcom/tudou/ui/activity/HomePageActivity;->finish()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1109
    :cond_0
    :goto_0
    return-void

    .line 1099
    :catch_0
    move-exception v0

    .line 1100
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "downloadApk.run()"

    invoke-static {v1, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1102
    invoke-static {v4}, Lcom/youku/util/Util;->showTips(I)V

    .line 1103
    iget-object v1, p0, Lcom/tudou/ui/activity/HomePageActivity$9;->this$0:Lcom/tudou/ui/activity/HomePageActivity;

    invoke-virtual {v1}, Lcom/tudou/ui/activity/HomePageActivity;->finish()V

    goto :goto_0

    .line 1104
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1105
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v4}, Lcom/youku/util/Util;->showTips(I)V

    .line 1106
    iget-object v1, p0, Lcom/tudou/ui/activity/HomePageActivity$9;->this$0:Lcom/tudou/ui/activity/HomePageActivity;

    invoke-virtual {v1}, Lcom/tudou/ui/activity/HomePageActivity;->finish()V

    .line 1107
    const-string v1, "downloadApk.run()"

    invoke-static {v1, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
