.class public Lcom/corncop/capricornus/zip/transform/ZipEntryTransformerEntry;
.super Ljava/lang/Object;
.source "ZipEntryTransformerEntry.java"


# instance fields
.field private final path:Ljava/lang/String;

.field private final transformer:Lcom/corncop/capricornus/zip/transform/ZipEntryTransformer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/corncop/capricornus/zip/transform/ZipEntryTransformer;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "transformer"    # Lcom/corncop/capricornus/zip/transform/ZipEntryTransformer;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/corncop/capricornus/zip/transform/ZipEntryTransformerEntry;->path:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/corncop/capricornus/zip/transform/ZipEntryTransformerEntry;->transformer:Lcom/corncop/capricornus/zip/transform/ZipEntryTransformer;

    .line 17
    return-void
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/corncop/capricornus/zip/transform/ZipEntryTransformerEntry;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getTransformer()Lcom/corncop/capricornus/zip/transform/ZipEntryTransformer;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/corncop/capricornus/zip/transform/ZipEntryTransformerEntry;->transformer:Lcom/corncop/capricornus/zip/transform/ZipEntryTransformer;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/corncop/capricornus/zip/transform/ZipEntryTransformerEntry;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/corncop/capricornus/zip/transform/ZipEntryTransformerEntry;->transformer:Lcom/corncop/capricornus/zip/transform/ZipEntryTransformer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
