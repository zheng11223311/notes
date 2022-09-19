.class Lcom/tudou/ui/activity/AboutTudouActivity$4;
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
    .line 112
    iput-object p1, p0, Lcom/tudou/ui/activity/AboutTudouActivity$4;->this$0:Lcom/tudou/ui/activity/AboutTudouActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/tudou/ui/activity/AboutTudouActivity$4;->this$0:Lcom/tudou/ui/activity/AboutTudouActivity;

    iget-object v1, p0, Lcom/tudou/ui/activity/AboutTudouActivity$4;->this$0:Lcom/tudou/ui/activity/AboutTudouActivity;

    const v2, 0x7f0d0005

    invoke-virtual {v1, v2}, Lcom/tudou/ui/activity/AboutTudouActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Util;->call(Landroid/app/Activity;Ljava/lang/String;)V

    .line 117
    return-void
.end method
