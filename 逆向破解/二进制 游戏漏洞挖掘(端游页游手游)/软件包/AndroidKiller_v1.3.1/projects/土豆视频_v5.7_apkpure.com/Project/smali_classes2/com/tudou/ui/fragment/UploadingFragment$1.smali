.class Lcom/tudou/ui/fragment/UploadingFragment$1;
.super Ljava/lang/Object;
.source "UploadingFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/UploadingFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/UploadingFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/UploadingFragment;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/tudou/ui/fragment/UploadingFragment$1;->this$0:Lcom/tudou/ui/fragment/UploadingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x1

    .line 205
    const-string v1, "TAG_TUDOU"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onItemClick=======upload==mIsEdit==="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tudou/ui/fragment/UploadingFragment$1;->this$0:Lcom/tudou/ui/fragment/UploadingFragment;

    iget-boolean v4, v4, Lcom/tudou/ui/fragment/UploadingFragment;->mIsEdit:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment$1;->this$0:Lcom/tudou/ui/fragment/UploadingFragment;

    iget-boolean v1, v1, Lcom/tudou/ui/fragment/UploadingFragment;->mIsEdit:Z

    if-eqz v1, :cond_2

    .line 208
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment$1;->this$0:Lcom/tudou/ui/fragment/UploadingFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/UploadingFragment;->access$000(Lcom/tudou/ui/fragment/UploadingFragment;)Ljava/util/List;

    move-result-object v1

    add-int/lit8 v3, p3, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/upload/UploadInfo;

    sput-object v1, Lcom/tudou/ui/fragment/UploadingFragment;->mCurrentSelectUploadInfo:Lcom/tudou/upload/UploadInfo;

    .line 209
    sget-object v3, Lcom/tudou/ui/fragment/UploadingFragment;->mCurrentSelectUploadInfo:Lcom/tudou/upload/UploadInfo;

    sget-object v1, Lcom/tudou/ui/fragment/UploadingFragment;->mCurrentSelectUploadInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v1}, Lcom/tudou/upload/UploadInfo;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Lcom/tudou/upload/UploadInfo;->setChecked(Z)V

    .line 211
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment$1;->this$0:Lcom/tudou/ui/fragment/UploadingFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/UploadingFragment;->access$100(Lcom/tudou/ui/fragment/UploadingFragment;)Lcom/tudou/adapter/UpLoadingAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tudou/adapter/UpLoadingAdapter;->notifyDataSetChanged()V

    .line 212
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment$1;->this$0:Lcom/tudou/ui/fragment/UploadingFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/UploadingFragment;->access$200(Lcom/tudou/ui/fragment/UploadingFragment;)V

    .line 242
    :cond_0
    :goto_1
    return-void

    .line 209
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 214
    :cond_2
    add-int/lit8 v1, p3, -0x1

    iget-object v3, p0, Lcom/tudou/ui/fragment/UploadingFragment$1;->this$0:Lcom/tudou/ui/fragment/UploadingFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/UploadingFragment;->access$300(Lcom/tudou/ui/fragment/UploadingFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gt v1, v3, :cond_0

    .line 217
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment$1;->this$0:Lcom/tudou/ui/fragment/UploadingFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/UploadingFragment;->access$300(Lcom/tudou/ui/fragment/UploadingFragment;)Ljava/util/List;

    move-result-object v1

    add-int/lit8 v3, p3, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/upload/UploadInfo;

    sput-object v1, Lcom/tudou/ui/fragment/UploadingFragment;->mCurrentSelectUploadInfo:Lcom/tudou/upload/UploadInfo;

    .line 219
    sget-object v1, Lcom/tudou/ui/fragment/UploadingFragment;->mCurrentSelectUploadInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v1}, Lcom/tudou/upload/UploadInfo;->getUiType()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_3

    .line 220
    const-string v1, "\u4e0a\u4f20\u9875\u53d1\u5e03\u5931\u8d25\u6587\u4ef6\u5939\u70b9\u51fb"

    const-string v3, "\u53d1\u5e03\u5931\u8d25\u6587\u4ef6\u5939"

    invoke-static {v1, v3}, Lcom/tudou/ui/activity/UploadManagerActivity;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    sput-boolean v2, Lcom/tudou/ui/fragment/UploadFailedFragment;->mNeedToRefresh:Z

    .line 223
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment$1;->this$0:Lcom/tudou/ui/fragment/UploadingFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/UploadingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/tudou/ui/activity/CheckedActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 225
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment$1;->this$0:Lcom/tudou/ui/fragment/UploadingFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/UploadingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 226
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    sget-object v1, Lcom/tudou/ui/fragment/UploadingFragment;->mCurrentSelectUploadInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v1}, Lcom/tudou/upload/UploadInfo;->getUiType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 227
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment$1;->this$0:Lcom/tudou/ui/fragment/UploadingFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/UploadingFragment;->access$400(Lcom/tudou/ui/fragment/UploadingFragment;)V

    goto :goto_1

    .line 228
    :cond_4
    sget-object v1, Lcom/tudou/ui/fragment/UploadingFragment;->mCurrentSelectUploadInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v1}, Lcom/tudou/upload/UploadInfo;->getUiType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 229
    const-string v1, "\u4e0a\u4f20\u9875\u5df2\u4e0a\u4f20\u89c6\u9891\u70b9\u51fb"

    const-string v2, "\u5df2\u4e0a\u4f20\u89c6\u9891\u70b9\u51fb"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "myUpload|detail||itemCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/tudou/ui/fragment/UploadingFragment;->mCurrentSelectUploadInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v4}, Lcom/tudou/upload/UploadInfo;->getItemCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/tudou/ui/activity/UploadManagerActivity;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment$1;->this$0:Lcom/tudou/ui/fragment/UploadingFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/UploadingFragment;->access$500(Lcom/tudou/ui/fragment/UploadingFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v1

    sget-object v2, Lcom/tudou/ui/fragment/UploadingFragment;->mCurrentSelectUploadInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v2}, Lcom/tudou/upload/UploadInfo;->getItemCode()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/tudou/android/Youku$Type;->VIDEOID:Lcom/tudou/android/Youku$Type;

    sget-object v4, Lcom/tudou/ui/fragment/UploadingFragment;->mCurrentSelectUploadInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v4}, Lcom/tudou/upload/UploadInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/tudou/android/TudouApi;->goDetailById(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/android/Youku$Type;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
