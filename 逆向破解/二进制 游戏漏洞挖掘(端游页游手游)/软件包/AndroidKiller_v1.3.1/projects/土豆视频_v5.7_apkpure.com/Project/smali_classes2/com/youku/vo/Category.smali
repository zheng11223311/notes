.class public Lcom/youku/vo/Category;
.super Ljava/lang/Object;
.source "Category.java"


# instance fields
.field private id:I

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 8
    iget v0, p0, Lcom/youku/vo/Category;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/youku/vo/Category;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 12
    iput p1, p0, Lcom/youku/vo/Category;->id:I

    .line 13
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/youku/vo/Category;->name:Ljava/lang/String;

    .line 21
    return-void
.end method
