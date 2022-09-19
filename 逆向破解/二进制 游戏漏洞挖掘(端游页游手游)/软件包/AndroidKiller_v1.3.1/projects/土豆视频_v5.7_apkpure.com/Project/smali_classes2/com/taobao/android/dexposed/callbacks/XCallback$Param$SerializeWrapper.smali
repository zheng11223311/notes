.class Lcom/taobao/android/dexposed/callbacks/XCallback$Param$SerializeWrapper;
.super Ljava/lang/Object;
.source "XCallback.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/dexposed/callbacks/XCallback$Param;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializeWrapper"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private object:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/taobao/android/dexposed/callbacks/XCallback$Param$SerializeWrapper;->object:Ljava/lang/Object;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/taobao/android/dexposed/callbacks/XCallback$Param$SerializeWrapper;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/android/dexposed/callbacks/XCallback$Param$SerializeWrapper;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/taobao/android/dexposed/callbacks/XCallback$Param$SerializeWrapper;->object:Ljava/lang/Object;

    return-object v0
.end method
