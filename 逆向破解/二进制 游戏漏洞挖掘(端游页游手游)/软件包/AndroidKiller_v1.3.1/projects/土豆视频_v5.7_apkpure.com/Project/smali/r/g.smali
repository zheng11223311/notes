.class public Lr/g;
.super Lr/c;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "message"


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lr/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lr/c;-><init>(Lr/a;)V

    .line 17
    iput-object p2, p0, Lr/g;->b:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lr/g;->b:Ljava/lang/String;

    return-object v0
.end method
