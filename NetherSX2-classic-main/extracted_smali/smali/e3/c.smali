.class public abstract Le3/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le3/c$a;
    }
.end annotation


# static fields
.field public static final c:Le3/c$a;

.field public static final d:Le3/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Le3/c$a;

    invoke-direct {v0}, Le3/c$a;-><init>()V

    sput-object v0, Le3/c;->c:Le3/c$a;

    sget-object v0, Lz2/b;->a:Lz2/a;

    invoke-virtual {v0}, Lz2/a;->b()Le3/c;

    move-result-object v0

    sput-object v0, Le3/c;->d:Le3/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method
