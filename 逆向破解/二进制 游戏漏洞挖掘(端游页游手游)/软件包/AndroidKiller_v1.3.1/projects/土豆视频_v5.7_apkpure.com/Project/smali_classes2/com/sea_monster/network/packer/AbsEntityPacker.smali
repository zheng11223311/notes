.class public abstract Lcom/sea_monster/network/packer/AbsEntityPacker;
.super Ljava/lang/Object;
.source "AbsEntityPacker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected obj:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    .local p0, "this":Lcom/sea_monster/network/packer/AbsEntityPacker;, "Lcom/sea_monster/network/packer/AbsEntityPacker<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p0, "this":Lcom/sea_monster/network/packer/AbsEntityPacker;, "Lcom/sea_monster/network/packer/AbsEntityPacker<TT;>;"
    .local p1, "model":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/sea_monster/network/packer/AbsEntityPacker;->obj:Ljava/lang/Object;

    .line 16
    return-void
.end method


# virtual methods
.method public getModel()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, "this":Lcom/sea_monster/network/packer/AbsEntityPacker;, "Lcom/sea_monster/network/packer/AbsEntityPacker<TT;>;"
    iget-object v0, p0, Lcom/sea_monster/network/packer/AbsEntityPacker;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract pack()Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sea_monster/exception/InternalException;,
            Lorg/json/JSONException;
        }
    .end annotation
.end method
