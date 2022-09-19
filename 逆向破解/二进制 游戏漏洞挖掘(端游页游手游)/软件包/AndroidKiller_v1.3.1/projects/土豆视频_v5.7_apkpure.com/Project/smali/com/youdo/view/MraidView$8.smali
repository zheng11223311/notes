.class Lcom/youdo/view/MraidView$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youdo/view/MraidView;->injectJavaScript(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youdo/view/MraidView;

.field final synthetic val$jscode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/youdo/view/MraidView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/youdo/view/MraidView$8;->this$0:Lcom/youdo/view/MraidView;

    iput-object p2, p0, Lcom/youdo/view/MraidView$8;->val$jscode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/youdo/view/MraidView$8;->this$0:Lcom/youdo/view/MraidView;

    iget-object v1, p0, Lcom/youdo/view/MraidView$8;->val$jscode:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/youdo/view/MraidView;->access$1500(Lcom/youdo/view/MraidView;Ljava/lang/String;)V

    return-void
.end method
