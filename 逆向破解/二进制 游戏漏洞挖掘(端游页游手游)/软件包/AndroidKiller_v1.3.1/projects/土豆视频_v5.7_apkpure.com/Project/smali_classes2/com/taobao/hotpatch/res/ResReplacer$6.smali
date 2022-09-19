.class final Lcom/taobao/hotpatch/res/ResReplacer$6;
.super Lcom/taobao/android/dexposed/XC_MethodHook;
.source "ResReplacer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/hotpatch/res/ResReplacer;->hookResources(ZLjava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/taobao/android/dexposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;)V
    .locals 6
    .param p1, "param"    # Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 158
    iget-object v3, p1, Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 159
    .local v1, "id":I
    invoke-static {}, Lcom/taobao/hotpatch/res/ResReplacer;->access$000()Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 160
    iget-object v3, p1, Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v4, 0x1

    aget-object v0, v3, v4

    check-cast v0, Ljava/lang/CharSequence;

    .line 161
    .local v0, "defaultText":Ljava/lang/CharSequence;
    invoke-static {}, Lcom/taobao/hotpatch/res/ResReplacer;->access$100()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {}, Lcom/taobao/hotpatch/res/ResReplacer;->access$000()Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3, v0}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 162
    .local v2, "text":Ljava/lang/CharSequence;
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 163
    invoke-virtual {p1, v2}, Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 166
    .end local v0    # "defaultText":Ljava/lang/CharSequence;
    .end local v2    # "text":Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method
