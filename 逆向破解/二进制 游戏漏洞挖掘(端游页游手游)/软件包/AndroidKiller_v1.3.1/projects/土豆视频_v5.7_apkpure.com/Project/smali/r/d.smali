.class public Lr/d;
.super Lr/c;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "type"

.field public static final b:Ljava/lang/String; = "switch"

.field public static final c:Ljava/lang/String; = "info"

.field public static final d:Ljava/lang/String; = "desc"


# instance fields
.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lr/a;->p:Lr/a;

    invoke-direct {p0, v0}, Lr/c;-><init>(Lr/a;)V

    .line 21
    iput-object p1, p0, Lr/d;->e:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lr/d;->e:Ljava/lang/String;

    return-object v0
.end method
