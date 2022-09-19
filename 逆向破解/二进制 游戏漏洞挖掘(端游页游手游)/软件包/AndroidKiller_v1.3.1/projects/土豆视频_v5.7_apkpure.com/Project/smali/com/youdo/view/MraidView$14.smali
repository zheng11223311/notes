.class Lcom/youdo/view/MraidView$14;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/openad/common/util/XYDTimer$EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youdo/view/MraidView;->startAdAssetTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youdo/view/MraidView;


# direct methods
.method constructor <init>(Lcom/youdo/view/MraidView;)V
    .locals 0

    iput-object p1, p0, Lcom/youdo/view/MraidView$14;->this$0:Lcom/youdo/view/MraidView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimer(I)V
    .locals 0

    return-void
.end method

.method public onTimerComplete()V
    .locals 1

    iget-object v0, p0, Lcom/youdo/view/MraidView$14;->this$0:Lcom/youdo/view/MraidView;

    invoke-static {v0}, Lcom/youdo/view/MraidView;->access$1700(Lcom/youdo/view/MraidView;)V

    return-void
.end method
