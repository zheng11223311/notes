.class Lcom/tudou/ui/activity/HomePageActivity$10;
.super Ljava/lang/Object;
.source "HomePageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/tudou/ui/activity/HomePageActivity;)V
    .locals 0

    .prologue
    .line 1114
    iput-object p1, p0, Lcom/tudou/ui/activity/HomePageActivity$10;->this$0:Lcom/tudou/ui/activity/HomePageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/tudou/ui/activity/HomePageActivity$10;->this$0:Lcom/tudou/ui/activity/HomePageActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tudou/ui/activity/HomePageActivity;->access$502(Lcom/tudou/ui/activity/HomePageActivity;Z)Z

    .line 1118
    iget-object v0, p0, Lcom/tudou/ui/activity/HomePageActivity$10;->this$0:Lcom/tudou/ui/activity/HomePageActivity;

    invoke-static {v0}, Lcom/tudou/ui/activity/HomePageActivity;->access$600(Lcom/tudou/ui/activity/HomePageActivity;)Lcom/youku/widget/TudouProDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/widget/TudouProDialog;->dismiss()V

    .line 1119
    iget-object v0, p0, Lcom/tudou/ui/activity/HomePageActivity$10;->this$0:Lcom/tudou/ui/activity/HomePageActivity;

    invoke-static {v0}, Lcom/tudou/ui/activity/HomePageActivity;->access$700(Lcom/tudou/ui/activity/HomePageActivity;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1120
    iget-object v0, p0, Lcom/tudou/ui/activity/HomePageActivity$10;->this$0:Lcom/tudou/ui/activity/HomePageActivity;

    invoke-static {v0}, Lcom/tudou/ui/activity/HomePageActivity;->access$700(Lcom/tudou/ui/activity/HomePageActivity;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1121
    :cond_0
    return-void
.end method
