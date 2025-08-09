# Alert APP PEOPLE → GARBAGE COLLECTOR

## Overview

This is a full-stack web application designed to facilitate garbage collection reporting and management for municipal services. The application enables citizens to report garbage issues in real-time while providing dedicated dashboards for garbage collectors and administrators to manage and resolve these alerts efficiently.

The platform supports three user roles: citizens who can submit alerts with photos and location data, collectors who can view and resolve assigned alerts, and administrators who have full oversight of the system including user management and analytics.

## User Preferences

Preferred communication style: Simple, everyday language.

## System Architecture

### Frontend Architecture
- **Framework**: React 18 with TypeScript and Vite build system
- **UI Library**: Shadcn/ui components built on Radix UI primitives
- **Styling**: Tailwind CSS with custom municipal color scheme and responsive design
- **State Management**: TanStack React Query for server state management
- **Routing**: Wouter for lightweight client-side routing
- **Forms**: React Hook Form with Zod validation for type-safe form handling

### Backend Architecture
- **Runtime**: Node.js with Express.js framework
- **Database ORM**: Drizzle ORM with PostgreSQL dialect
- **Authentication**: Replit Auth integration with OpenID Connect
- **Session Management**: Express sessions with PostgreSQL session store
- **File Uploads**: Multer middleware for handling multipart form data
- **API Design**: RESTful API with rate limiting and input validation

### Data Storage Solutions
- **Primary Database**: PostgreSQL with Neon serverless connection
- **Schema Design**: 
  - Users table with role-based access (citizen, collector, admin)
  - Alerts table with status tracking and geolocation
  - Alert assignments for collector routing
  - Alert comments for communication
  - Sessions table for authentication state
- **File Storage**: Cloudinary integration for image uploads and management

### Authentication and Authorization
- **Provider**: Replit Auth with OIDC (OpenID Connect) protocol
- **Session Management**: Server-side sessions with PostgreSQL persistence
- **Role-Based Access**: Three-tier system (citizen, collector, admin)
- **Security Features**: CSRF protection, secure cookies, and session expiration

### External Dependencies

#### Third-Party Services
- **Cloudinary**: Image storage and transformation service for alert photos
- **NodeMailer**: Email service for alert confirmations and notifications
- **Leaflet.js**: Interactive mapping for location visualization and selection
- **Neon Database**: Serverless PostgreSQL hosting

#### Development Tools
- **Drizzle Kit**: Database migrations and schema management
- **ESBuild**: Fast JavaScript bundler for production builds
- **PostCSS**: CSS processing with Tailwind CSS compilation
- **TypeScript**: Static type checking across frontend and backend

#### Key Libraries
- **Zod**: Runtime type validation for API endpoints and forms
- **Express Rate Limit**: API rate limiting to prevent abuse
- **Date-fns**: Date manipulation and formatting utilities
- **Class Variance Authority**: Type-safe CSS class composition

The application follows a monorepo structure with shared TypeScript schemas between client and server, ensuring type safety across the entire stack. The architecture prioritizes real-time functionality, mobile responsiveness, and scalable municipal service management.