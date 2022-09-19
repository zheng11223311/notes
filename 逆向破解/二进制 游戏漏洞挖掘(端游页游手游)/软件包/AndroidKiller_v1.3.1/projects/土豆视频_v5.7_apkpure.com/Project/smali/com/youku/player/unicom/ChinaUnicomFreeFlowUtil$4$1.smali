.class Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil$4$1;
.super Ljava/lang/Object;
.source "ChinaUnicomFreeFlowUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil$4;


# direct methods
.method constructor <init>(Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil$4;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil$4$1;->this$0:Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 266
    iget-object v0, p0, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil$4$1;->this$0:Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil$4;

    iget-object v0, v0, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil$4;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "\u5f53\u524d\u4f7f\u7528\u8054\u901a\u514d\u6d41\u91cf\u64ad\u653e"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 268
    return-void
.end method
