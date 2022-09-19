.class Lcom/tudou/ui/activity/AboutTudouActivity$6;
.super Ljava/lang/Object;
.source "AboutTudouActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/activity/AboutTudouActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/activity/AboutTudouActivity;


# direct methods
.method constructor <init>(Lcom/tudou/ui/activity/AboutTudouActivity;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/tudou/ui/activity/AboutTudouActivity$6;->this$0:Lcom/tudou/ui/activity/AboutTudouActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 134
    iget-object v1, p0, Lcom/tudou/ui/activity/AboutTudouActivity$6;->this$0:Lcom/tudou/ui/activity/AboutTudouActivity;

    const v2, 0x7f0d0006

    invoke-virtual {v1, v2}, Lcom/tudou/ui/activity/AboutTudouActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/youku/util/Util;->copy(Ljava/lang/String;)V

    .line 135
    const-string v0, "\"424622190\"\u5df2\u590d\u5236\u5230\u526a\u8d34\u677f"

    .line 136
    .local v0, "mes":Ljava/lang/String;
    iget-object v1, p0, Lcom/tudou/ui/activity/AboutTudouActivity$6;->this$0:Lcom/tudou/ui/activity/AboutTudouActivity;

    invoke-static {v1, v0}, Lcom/youku/util/Util;->showSureDialogShow(Landroid/app/Activity;Ljava/lang/String;)V

    .line 137
    return-void
.end method
