.class Lcom/taobao/hotpatch/patch/PatchCallback;
.super Ljava/lang/Object;
.source "PatchCallback.java"


# instance fields
.field private final instance:Lcom/taobao/hotpatch/patch/IPatch;


# direct methods
.method protected constructor <init>(Lcom/taobao/hotpatch/patch/IPatch;)V
    .locals 0
    .param p1, "instance"    # Lcom/taobao/hotpatch/patch/IPatch;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/taobao/hotpatch/patch/PatchCallback;->instance:Lcom/taobao/hotpatch/patch/IPatch;

    .line 10
    return-void
.end method

.method protected static final callAll(Lcom/taobao/hotpatch/patch/PatchParam;)Lcom/taobao/hotpatch/patch/PatchResult;
    .locals 7
    .param p0, "param"    # Lcom/taobao/hotpatch/patch/PatchParam;

    .prologue
    const/4 v6, 0x1

    .line 13
    const/4 v1, 0x1

    .line 14
    .local v1, "isAllFailed":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/taobao/hotpatch/patch/PatchParam;->callbacks:[Ljava/lang/Object;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 16
    :try_start_0
    iget-object v3, p0, Lcom/taobao/hotpatch/patch/PatchParam;->callbacks:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lcom/taobao/hotpatch/patch/PatchCallback;

    invoke-virtual {v3, p0}, Lcom/taobao/hotpatch/patch/PatchCallback;->call(Lcom/taobao/hotpatch/patch/PatchParam;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    const/4 v1, 0x0

    .line 14
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 18
    :catch_0
    move-exception v2

    .line 19
    .local v2, "t":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 22
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_0
    if-eqz v1, :cond_1

    .line 23
    new-instance v3, Lcom/taobao/hotpatch/patch/PatchResult;

    sget v4, Lcom/taobao/hotpatch/patch/PatchResult;->ALL_PATCH_FAILED:I

    const-string v5, "All patch classes excute failed"

    invoke-direct {v3, v6, v4, v5}, Lcom/taobao/hotpatch/patch/PatchResult;-><init>(ZILjava/lang/String;)V

    .line 25
    :goto_2
    return-object v3

    :cond_1
    new-instance v3, Lcom/taobao/hotpatch/patch/PatchResult;

    sget v4, Lcom/taobao/hotpatch/patch/PatchResult;->NO_ERROR:I

    const-string v5, ""

    invoke-direct {v3, v6, v4, v5}, Lcom/taobao/hotpatch/patch/PatchResult;-><init>(ZILjava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method protected call(Lcom/taobao/hotpatch/patch/PatchParam;)V
    .locals 1
    .param p1, "param"    # Lcom/taobao/hotpatch/patch/PatchParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 30
    instance-of v0, p1, Lcom/taobao/hotpatch/patch/PatchParam;

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0, p1}, Lcom/taobao/hotpatch/patch/PatchCallback;->handlePatch(Lcom/taobao/hotpatch/patch/PatchParam;)V

    .line 32
    :cond_0
    return-void
.end method

.method protected handlePatch(Lcom/taobao/hotpatch/patch/PatchParam;)V
    .locals 1
    .param p1, "lpparam"    # Lcom/taobao/hotpatch/patch/PatchParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/taobao/hotpatch/patch/PatchCallback;->instance:Lcom/taobao/hotpatch/patch/IPatch;

    invoke-interface {v0, p1}, Lcom/taobao/hotpatch/patch/IPatch;->handlePatch(Lcom/taobao/hotpatch/patch/PatchParam;)V

    .line 36
    return-void
.end method
