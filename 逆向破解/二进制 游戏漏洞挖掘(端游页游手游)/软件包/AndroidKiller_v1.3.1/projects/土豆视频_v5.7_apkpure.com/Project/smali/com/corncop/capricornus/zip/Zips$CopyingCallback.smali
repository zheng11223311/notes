.class Lcom/corncop/capricornus/zip/Zips$CopyingCallback;
.super Ljava/lang/Object;
.source "Zips.java"

# interfaces
.implements Lcom/corncop/capricornus/zip/ZipEntryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/corncop/capricornus/zip/Zips;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CopyingCallback"
.end annotation


# instance fields
.field private final entryByPath:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/corncop/capricornus/zip/transform/ZipEntryTransformer;",
            ">;"
        }
    .end annotation
.end field

.field private final out:Ljava/util/zip/ZipOutputStream;

.field private final preserveTimestapms:Z

.field private final visitedNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/util/zip/ZipOutputStream;Z)V
    .locals 1
    .param p2, "out"    # Ljava/util/zip/ZipOutputStream;
    .param p3, "preserveTimestapms"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/corncop/capricornus/zip/transform/ZipEntryTransformerEntry;",
            ">;",
            "Ljava/util/zip/ZipOutputStream;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 633
    .local p1, "transformerEntries":Ljava/util/List;, "Ljava/util/List<Lcom/corncop/capricornus/zip/transform/ZipEntryTransformerEntry;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 634
    iput-object p2, p0, Lcom/corncop/capricornus/zip/Zips$CopyingCallback;->out:Ljava/util/zip/ZipOutputStream;

    .line 635
    iput-boolean p3, p0, Lcom/corncop/capricornus/zip/Zips$CopyingCallback;->preserveTimestapms:Z

    .line 636
    invoke-static {p1}, Lcom/corncop/capricornus/zip/ZipUtil;->transformersByPath(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/corncop/capricornus/zip/Zips$CopyingCallback;->entryByPath:Ljava/util/Map;

    .line 637
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/corncop/capricornus/zip/Zips$CopyingCallback;->visitedNames:Ljava/util/Set;

    .line 638
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Ljava/util/zip/ZipOutputStream;ZLcom/corncop/capricornus/zip/Zips$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/List;
    .param p2, "x1"    # Ljava/util/zip/ZipOutputStream;
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lcom/corncop/capricornus/zip/Zips$1;

    .prologue
    .line 626
    invoke-direct {p0, p1, p2, p3}, Lcom/corncop/capricornus/zip/Zips$CopyingCallback;-><init>(Ljava/util/List;Ljava/util/zip/ZipOutputStream;Z)V

    return-void
.end method


# virtual methods
.method public process(Ljava/io/InputStream;Ljava/util/zip/ZipEntry;)V
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "zipEntry"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 641
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 643
    .local v0, "entryName":Ljava/lang/String;
    iget-object v2, p0, Lcom/corncop/capricornus/zip/Zips$CopyingCallback;->visitedNames:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 655
    :goto_0
    return-void

    .line 646
    :cond_0
    iget-object v2, p0, Lcom/corncop/capricornus/zip/Zips$CopyingCallback;->visitedNames:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 648
    iget-object v2, p0, Lcom/corncop/capricornus/zip/Zips$CopyingCallback;->entryByPath:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/corncop/capricornus/zip/transform/ZipEntryTransformer;

    .line 649
    .local v1, "transformer":Lcom/corncop/capricornus/zip/transform/ZipEntryTransformer;
    if-nez v1, :cond_1

    .line 650
    iget-object v2, p0, Lcom/corncop/capricornus/zip/Zips$CopyingCallback;->out:Ljava/util/zip/ZipOutputStream;

    iget-boolean v3, p0, Lcom/corncop/capricornus/zip/Zips$CopyingCallback;->preserveTimestapms:Z

    invoke-static {p2, p1, v2, v3}, Lcom/corncop/capricornus/zip/ZipEntryUtil;->copyEntry(Ljava/util/zip/ZipEntry;Ljava/io/InputStream;Ljava/util/zip/ZipOutputStream;Z)V

    goto :goto_0

    .line 653
    :cond_1
    iget-object v2, p0, Lcom/corncop/capricornus/zip/Zips$CopyingCallback;->out:Ljava/util/zip/ZipOutputStream;

    invoke-interface {v1, p1, p2, v2}, Lcom/corncop/capricornus/zip/transform/ZipEntryTransformer;->transform(Ljava/io/InputStream;Ljava/util/zip/ZipEntry;Ljava/util/zip/ZipOutputStream;)V

    goto :goto_0
.end method
