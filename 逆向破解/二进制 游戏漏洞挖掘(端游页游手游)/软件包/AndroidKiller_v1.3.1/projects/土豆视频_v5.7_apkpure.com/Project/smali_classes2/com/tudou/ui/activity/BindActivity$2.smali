.class Lcom/tudou/ui/activity/BindActivity$2;
.super Ljava/lang/Object;
.source "BindActivity.java"

# interfaces
.implements Lcom/tudou/videoshare/ShareUtil$IShareCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/activity/BindActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/activity/BindActivity;


# direct methods
.method constructor <init>(Lcom/tudou/ui/activity/BindActivity;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/tudou/ui/activity/BindActivity$2;->this$0:Lcom/tudou/ui/activity/BindActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss(ZLjava/lang/String;)V
    .locals 1
    .param p1, "needDismiss"    # Z
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 258
    if-eqz p1, :cond_0

    .line 259
    iget-object v0, p0, Lcom/tudou/ui/activity/BindActivity$2;->this$0:Lcom/tudou/ui/activity/BindActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/BindActivity;->dismiss()V

    .line 261
    :cond_0
    return-void
.end method
