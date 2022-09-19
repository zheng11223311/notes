.class public abstract Lcom/sea_monster/dao/FuncProperty;
.super Ljava/lang/Object;
.source "FuncProperty.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sea_monster/dao/FuncProperty$MaxProperty;,
        Lcom/sea_monster/dao/FuncProperty$MinProperty;,
        Lcom/sea_monster/dao/FuncProperty$CountProperty;
    }
.end annotation


# instance fields
.field asName:Ljava/lang/String;

.field property:Lcom/sea_monster/dao/Property;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method


# virtual methods
.method public as(Ljava/lang/String;)Lcom/sea_monster/dao/FuncProperty;
    .locals 0
    .param p1, "asName"    # Ljava/lang/String;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/sea_monster/dao/FuncProperty;->asName:Ljava/lang/String;

    .line 16
    return-object p0
.end method

.method public abstract getColumn()Ljava/lang/String;
.end method

.method public getProperty()Lcom/sea_monster/dao/Property;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/sea_monster/dao/FuncProperty;->property:Lcom/sea_monster/dao/Property;

    return-object v0
.end method
