.class Lcom/youdo/controller/MraidUtilityController$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youdo/controller/MraidUtilityController;->makeCall(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youdo/controller/MraidUtilityController;

.field final synthetic val$i:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/youdo/controller/MraidUtilityController;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/youdo/controller/MraidUtilityController$4;->this$0:Lcom/youdo/controller/MraidUtilityController;

    iput-object p2, p0, Lcom/youdo/controller/MraidUtilityController$4;->val$i:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/youdo/controller/MraidUtilityController$4;->this$0:Lcom/youdo/controller/MraidUtilityController;

    iget-object v0, v0, Lcom/youdo/controller/MraidUtilityController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/youdo/controller/MraidUtilityController$4;->val$i:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
