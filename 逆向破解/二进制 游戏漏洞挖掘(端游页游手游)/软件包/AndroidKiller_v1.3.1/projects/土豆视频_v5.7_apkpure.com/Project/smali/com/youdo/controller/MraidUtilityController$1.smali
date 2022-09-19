.class Lcom/youdo/controller/MraidUtilityController$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youdo/controller/MraidUtilityController;->init(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youdo/controller/MraidUtilityController;


# direct methods
.method constructor <init>(Lcom/youdo/controller/MraidUtilityController;)V
    .locals 0

    iput-object p1, p0, Lcom/youdo/controller/MraidUtilityController$1;->this$0:Lcom/youdo/controller/MraidUtilityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "MraidUtilityController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init: injection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youdo/controller/MraidUtilityController$1;->this$0:Lcom/youdo/controller/MraidUtilityController;

    iget-object v2, v2, Lcom/youdo/controller/MraidUtilityController;->mMraidView:Lcom/youdo/view/MraidView;

    invoke-virtual {v2}, Lcom/youdo/view/MraidView;->getTop()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
