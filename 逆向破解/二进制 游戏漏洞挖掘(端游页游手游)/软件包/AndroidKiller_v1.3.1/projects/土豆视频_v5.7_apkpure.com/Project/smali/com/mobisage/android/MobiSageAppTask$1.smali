.class Lcom/mobisage/android/MobiSageAppTask$1;
.super Ljava/lang/Object;
.source "MobiSageAppTask.java"

# interfaces
.implements Lcom/mobisage/android/IMobiSageActionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobisage/android/MobiSageAppTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobisage/android/MobiSageAppTask;


# direct methods
.method constructor <init>(Lcom/mobisage/android/MobiSageAppTask;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/mobisage/android/MobiSageAppTask$1;->this$0:Lcom/mobisage/android/MobiSageAppTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMobiSageActionError(Lcom/mobisage/android/MobiSageAction;)V
    .locals 1
    .param p1, "action"    # Lcom/mobisage/android/MobiSageAction;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAppTask$1;->this$0:Lcom/mobisage/android/MobiSageAppTask;

    invoke-static {v0}, Lcom/mobisage/android/MobiSageAppTask;->access$000(Lcom/mobisage/android/MobiSageAppTask;)V

    .line 107
    return-void
.end method

.method public onMobiSageActionFinish(Lcom/mobisage/android/MobiSageAction;)V
    .locals 1
    .param p1, "action"    # Lcom/mobisage/android/MobiSageAction;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAppTask$1;->this$0:Lcom/mobisage/android/MobiSageAppTask;

    invoke-static {v0}, Lcom/mobisage/android/MobiSageAppTask;->access$000(Lcom/mobisage/android/MobiSageAppTask;)V

    .line 102
    return-void
.end method
