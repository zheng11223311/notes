.class final Lcom/taobao/android/dexposed/XC_MethodReplacement$2;
.super Lcom/taobao/android/dexposed/XC_MethodReplacement;
.source "XC_MethodReplacement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/dexposed/XC_MethodReplacement;->returnConstant(ILjava/lang/Object;)Lcom/taobao/android/dexposed/XC_MethodReplacement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I

    .prologue
    .line 48
    iput-object p2, p0, Lcom/taobao/android/dexposed/XC_MethodReplacement$2;->val$result:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/taobao/android/dexposed/XC_MethodReplacement;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected replaceHookedMethod(Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;
    .locals 1
    .param p1, "param"    # Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/taobao/android/dexposed/XC_MethodReplacement$2;->val$result:Ljava/lang/Object;

    return-object v0
.end method
