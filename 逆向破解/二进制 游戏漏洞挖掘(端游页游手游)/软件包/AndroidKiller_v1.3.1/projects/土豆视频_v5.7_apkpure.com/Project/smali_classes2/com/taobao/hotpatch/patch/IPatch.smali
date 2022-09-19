.class public interface abstract Lcom/taobao/hotpatch/patch/IPatch;
.super Ljava/lang/Object;
.source "IPatch.java"


# static fields
.field public static final sReplacementMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/taobao/hotpatch/patch/IPatch;->sReplacementMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public abstract handlePatch(Lcom/taobao/hotpatch/patch/PatchParam;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
