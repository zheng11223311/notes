.class final Lcom/corncop/capricornus/zip/ZipUtil$2;
.super Ljava/lang/Object;
.source "ZipUtil.java"

# interfaces
.implements Lcom/corncop/capricornus/zip/NameMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/corncop/capricornus/zip/ZipUtil;->packEntry(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$fileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1136
    iput-object p1, p0, Lcom/corncop/capricornus/zip/ZipUtil$2;->val$fileName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public map(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/corncop/capricornus/zip/ZipUtil$2;->val$fileName:Ljava/lang/String;

    return-object v0
.end method
