.class Lcom/youku/gamecenter/outer/InstallablePromptHelper$1;
.super Ljava/lang/Object;
.source "InstallablePromptHelper.java"

# interfaces
.implements Lcom/youku/gamecenter/services/GetPresentListService$OnPresentListServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/outer/InstallablePromptHelper;->loadPromptAsync(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/outer/InstallablePromptHelper;

.field final synthetic val$packagename:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/outer/InstallablePromptHelper;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/youku/gamecenter/outer/InstallablePromptHelper$1;->this$0:Lcom/youku/gamecenter/outer/InstallablePromptHelper;

    iput-object p2, p0, Lcom/youku/gamecenter/outer/InstallablePromptHelper$1;->val$packagename:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;)V
    .locals 5
    .param p1, "failedInfo"    # Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;

    .prologue
    .line 79
    iget-object v1, p0, Lcom/youku/gamecenter/outer/InstallablePromptHelper$1;->this$0:Lcom/youku/gamecenter/outer/InstallablePromptHelper;

    iget-object v2, p0, Lcom/youku/gamecenter/outer/InstallablePromptHelper$1;->val$packagename:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/youku/gamecenter/outer/InstallablePromptHelper;->access$000(Lcom/youku/gamecenter/outer/InstallablePromptHelper;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "prompt":Ljava/lang/String;
    iget-object v1, p0, Lcom/youku/gamecenter/outer/InstallablePromptHelper$1;->this$0:Lcom/youku/gamecenter/outer/InstallablePromptHelper;

    invoke-static {v1}, Lcom/youku/gamecenter/outer/InstallablePromptHelper;->access$100(Lcom/youku/gamecenter/outer/InstallablePromptHelper;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/gamecenter/outer/InstallablePromptHelper$1;->val$packagename:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v2, p0, Lcom/youku/gamecenter/outer/InstallablePromptHelper$1;->this$0:Lcom/youku/gamecenter/outer/InstallablePromptHelper;

    iget-object v3, p0, Lcom/youku/gamecenter/outer/InstallablePromptHelper$1;->val$packagename:Ljava/lang/String;

    iget-object v1, p0, Lcom/youku/gamecenter/outer/InstallablePromptHelper$1;->this$0:Lcom/youku/gamecenter/outer/InstallablePromptHelper;

    invoke-static {v1}, Lcom/youku/gamecenter/outer/InstallablePromptHelper;->access$100(Lcom/youku/gamecenter/outer/InstallablePromptHelper;)Ljava/util/Map;

    move-result-object v1

    iget-object v4, p0, Lcom/youku/gamecenter/outer/InstallablePromptHelper$1;->val$packagename:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lcom/youku/gamecenter/outer/InstallablePromptHelper;->access$200(Lcom/youku/gamecenter/outer/InstallablePromptHelper;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public onSuccess(Lcom/youku/gamecenter/present/PresentListInfo;)V
    .locals 6
    .param p1, "data"    # Lcom/youku/gamecenter/present/PresentListInfo;

    .prologue
    .line 66
    iget-object v2, p0, Lcom/youku/gamecenter/outer/InstallablePromptHelper$1;->this$0:Lcom/youku/gamecenter/outer/InstallablePromptHelper;

    invoke-virtual {v2, p1}, Lcom/youku/gamecenter/outer/InstallablePromptHelper;->isValidPresent(Lcom/youku/gamecenter/present/PresentListInfo;)Z

    move-result v1

    .line 68
    .local v1, "validPresent":Z
    iget-object v2, p0, Lcom/youku/gamecenter/outer/InstallablePromptHelper$1;->this$0:Lcom/youku/gamecenter/outer/InstallablePromptHelper;

    iget-object v3, p0, Lcom/youku/gamecenter/outer/InstallablePromptHelper$1;->val$packagename:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lcom/youku/gamecenter/outer/InstallablePromptHelper;->access$000(Lcom/youku/gamecenter/outer/InstallablePromptHelper;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "prompt":Ljava/lang/String;
    iget-object v2, p0, Lcom/youku/gamecenter/outer/InstallablePromptHelper$1;->this$0:Lcom/youku/gamecenter/outer/InstallablePromptHelper;

    invoke-static {v2}, Lcom/youku/gamecenter/outer/InstallablePromptHelper;->access$100(Lcom/youku/gamecenter/outer/InstallablePromptHelper;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/gamecenter/outer/InstallablePromptHelper$1;->val$packagename:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v3, p0, Lcom/youku/gamecenter/outer/InstallablePromptHelper$1;->this$0:Lcom/youku/gamecenter/outer/InstallablePromptHelper;

    iget-object v4, p0, Lcom/youku/gamecenter/outer/InstallablePromptHelper$1;->val$packagename:Ljava/lang/String;

    iget-object v2, p0, Lcom/youku/gamecenter/outer/InstallablePromptHelper$1;->this$0:Lcom/youku/gamecenter/outer/InstallablePromptHelper;

    invoke-static {v2}, Lcom/youku/gamecenter/outer/InstallablePromptHelper;->access$100(Lcom/youku/gamecenter/outer/InstallablePromptHelper;)Ljava/util/Map;

    move-result-object v2

    iget-object v5, p0, Lcom/youku/gamecenter/outer/InstallablePromptHelper$1;->val$packagename:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v4, v2}, Lcom/youku/gamecenter/outer/InstallablePromptHelper;->access$200(Lcom/youku/gamecenter/outer/InstallablePromptHelper;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method
