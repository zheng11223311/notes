.class Lcom/mobisage/android/MobiSageSlot$SubActionCallback;
.super Ljava/lang/Object;
.source "MobiSageSlot.java"

# interfaces
.implements Lcom/mobisage/android/IMobiSageActionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobisage/android/MobiSageSlot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubActionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobisage/android/MobiSageSlot;


# direct methods
.method private constructor <init>(Lcom/mobisage/android/MobiSageSlot;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/mobisage/android/MobiSageSlot$SubActionCallback;->this$0:Lcom/mobisage/android/MobiSageSlot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mobisage/android/MobiSageSlot;Lcom/mobisage/android/MobiSageSlot$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mobisage/android/MobiSageSlot;
    .param p2, "x1"    # Lcom/mobisage/android/MobiSageSlot$1;

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/mobisage/android/MobiSageSlot$SubActionCallback;-><init>(Lcom/mobisage/android/MobiSageSlot;)V

    return-void
.end method


# virtual methods
.method public onMobiSageActionError(Lcom/mobisage/android/MobiSageAction;)V
    .locals 1
    .param p1, "action"    # Lcom/mobisage/android/MobiSageAction;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/mobisage/android/MobiSageSlot$SubActionCallback;->this$0:Lcom/mobisage/android/MobiSageSlot;

    invoke-virtual {v0, p1}, Lcom/mobisage/android/MobiSageSlot;->processSubActionError(Lcom/mobisage/android/MobiSageAction;)V

    .line 133
    return-void
.end method

.method public onMobiSageActionFinish(Lcom/mobisage/android/MobiSageAction;)V
    .locals 1
    .param p1, "action"    # Lcom/mobisage/android/MobiSageAction;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/mobisage/android/MobiSageSlot$SubActionCallback;->this$0:Lcom/mobisage/android/MobiSageSlot;

    invoke-virtual {v0, p1}, Lcom/mobisage/android/MobiSageSlot;->processSubActionFinish(Lcom/mobisage/android/MobiSageAction;)V

    .line 127
    return-void
.end method
