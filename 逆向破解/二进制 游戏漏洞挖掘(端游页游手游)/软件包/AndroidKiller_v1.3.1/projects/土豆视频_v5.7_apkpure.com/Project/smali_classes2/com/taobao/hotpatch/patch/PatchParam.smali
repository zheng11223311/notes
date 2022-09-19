.class public Lcom/taobao/hotpatch/patch/PatchParam;
.super Ljava/lang/Object;
.source "PatchParam.java"


# instance fields
.field protected final callbacks:[Ljava/lang/Object;

.field public contentMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/taobao/hotpatch/patch/ReadWriteSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/hotpatch/patch/ReadWriteSet",
            "<",
            "Lcom/taobao/hotpatch/patch/PatchCallback;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 11
    .local p1, "callbacks":Lcom/taobao/hotpatch/patch/ReadWriteSet;, "Lcom/taobao/hotpatch/patch/ReadWriteSet<Lcom/taobao/hotpatch/patch/PatchCallback;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-virtual {p1}, Lcom/taobao/hotpatch/patch/ReadWriteSet;->getSnapshot()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/hotpatch/patch/PatchParam;->callbacks:[Ljava/lang/Object;

    .line 13
    return-void
.end method
